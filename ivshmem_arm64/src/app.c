#include <zephyr.h>
#include <drivers/virtualization/ivshmem.h>
#include <stdio.h>
struct handshake
{
        uint32_t present;
        char arch[10];
};
struct shared_area
{
        void * write_area;
        void * read_area;
};
void main()
{
	printf("arm64 app started\n");
	struct shared_area rw_buf = {
                .write_area = (void*)0x9f000000,
                .read_area  = (void*)0x90000000
        };
	*((uint32_t*)rw_buf.write_area) = 0x00000000 ;
	struct handshake hnsk = {
                .present = 0xE00E0EE0,
        };
	memcpy(hnsk.arch, "ARM",4);
	
	if(*((uint32_t*)rw_buf.read_area) == 0x1FF1F11F)
        {
                printf("Already other core x86  present in memory.\n");
       		*((uint32_t*)rw_buf.write_area) =  0xE00E0EE0 ; 
        }
	else{
                printf("Attempting connection with other core ::\n");
                while(1)
                {
                        struct handshake * other = (struct handshake*)rw_buf.read_area;
                       // if(*((uint32_t*)rw_buf.read_area) == 0x1FF1F11F)
                        memcpy((void*)rw_buf.write_area,(void*)&hnsk,sizeof(struct shared_area));
			if(other->present == 0x1FF1F11F)
			{
                                printf("Other core of type x86 now conected \n");
                        	break;
			}
       			//*((uint32_t*)rw_buf.write_area) = 0xE00E0EE0 ; 
                }
        }
     	*((uint32_t*)rw_buf.read_area) = 0x00000000 ;
     	*((uint32_t*)rw_buf.write_area) = 0x00000000 ;
	printf("ARM_kernel_exiting\n");
	while(1);
}
