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
        volatile void * write_area;
        volatile void * read_area;
};
void main()
{
	printf("arm64 app started\n");
	volatile struct shared_area rw_buf = {
                .write_area = (void*)0x9f000000,
                .read_area  = (void*)0x90000000
        };
	*((uint32_t*)rw_buf.write_area) = 0x00000000 ;
	struct handshake hnsk = {
                .present = 0xE00E0EE0,
        };
	struct handshake in_hnsk;
	memcpy(hnsk.arch, "ARM",4);
	memcpy((void*)&in_hnsk,rw_buf.read_area,sizeof(struct shared_area)); 	
	if(in_hnsk.present  == 0x1FF1F11F)
        {
        	printf("Already other core %s present in memory.\n",in_hnsk.arch);
		memcpy(rw_buf.write_area,(void*)&hnsk,sizeof(struct shared_area));
	}
	else{
                printf("Attempting connection with other core ::\n");
                 static uint64_t l = 0;
		while(1)
                {
                        volatile struct handshake * other = (struct handshake*)rw_buf.read_area;
			if(other->present == 0x1FF1F11F)
			{
                                printf("Other core of type x86 now conected \n");
                        	break;
			}
			else
			{
				if(l % 9000000 == 0){
                                        printf("waiting for other core\n");
                        		memcpy((void*)rw_buf.write_area,(void*)&hnsk,sizeof(struct shared_area));
				}
                                l++;
			}
                }
        }
     	*((uint32_t*)rw_buf.read_area) = 0x00000000 ;
     	*((uint32_t*)rw_buf.write_area) = 0x00000000 ;
	printf("ARM_kernel_exiting\n");
	while(1);
}
