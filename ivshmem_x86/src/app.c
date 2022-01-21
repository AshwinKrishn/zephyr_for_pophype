#include <zephyr.h>
#include <drivers/virtualization/ivshmem.h>
#include <stdio.h>

struct shared_area
{
	void * write_area;
	void * read_area;
};

struct handshake
{
	uint32_t  present;
	char arch[10];
};
void main()
{
	printf("x86 app here\n");
	struct shared_area rw_buf = {
		.write_area = (void*)0x50000000,
		.read_area  = (void*)0x5f000000
	};
	*((uint32_t*)rw_buf.read_area) = 0x00454600 ;
	struct handshake hnsk = {
		.present = 0x1FF1F11F,
	};
	*((uint32_t*)rw_buf.write_area) = 0x00000000 ;
	memcpy(hnsk.arch, "x86",4);
	
	if(*((uint32_t*)rw_buf.read_area) == 0xE00E0EE0)
	{
		printf("Already other core ARM present in memory.\n");	
		//memcpy(rw_buf.write_area,hnsk,sizeof(struct shared_area));
		*((uint32_t*)rw_buf.write_area) = 0x1FF1F11F ;	
	}	
	else{
		printf("Attempting connection with other core ::\n");	
		//memcpy(rw_buf.write_area,hnsk,sizeof(struct shared_area));
		*((uint32_t*)rw_buf.write_area) = 0x1FF1F11F ; 
                printf("Content at %p is %x\n",(void*)(rw_buf.write_area ),*((uint32_t*)(rw_buf.write_area )));
		while(1)
		{
			struct handshake * other = (struct handshake*)rw_buf.read_area;
			memcpy(rw_buf.write_area,hnsk,sizeof(struct shared_area));
			if(other->present == 0xE00E0EE0)
			{
				printf("Other core of type ARM conected \n");
				break;
			}
		}
	}
		
	printf("x86_kernel_exiting");
	*((uint32_t*)rw_buf.read_area) = 0x00000000 ;
	while(1);
}
