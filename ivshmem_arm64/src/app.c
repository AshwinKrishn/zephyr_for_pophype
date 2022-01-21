#include <zephyr.h>
#include <drivers/virtualization/ivshmem.h>
#include <stdio.h>
struct handshake
{
        char present;
        char arch[10];
};
struct shared_area
{
        void * write_area;
        void * read_area;
};
void main()
{
	printf("arm64 app here and there\n");
	struct shared_area rw_buf = {
                .write_area = (void*)0x9f000000,
                .read_area  = (void*)0x90000000
        };
	struct handshake hnsk = {
                .present = 0x1F,
        }
	memcpy(hnsk.arch, "ARM",4);
	printing("Attempting connection with other core ::\n");
	while(1)
	{
	

	}
/*	for(int i = 0 ; i < 10 ; i++)
        {
                printf(" content at 0x%x is %x\n",(i + (uint8_t *)shared_mem_linker) , *((uint8_t *)shared_mem_linker + i)  ) ;
        }
        shared_mem_linker = (void *)0x9f000000;
        for(int i = 0 ; i < 10 ; i++)
        {
                printf(" content at 0x%x is %x\n",(i + (uint8_t *)shared_mem_linker) , *((uint8_t *)shared_mem_linker + i)  ) ;
        }
	int to_read = 1;
	char first_char;
	first_char = *((char*)0x90000000) ; 
	while(1)
	{
		printf("Contents of 0x90000000 are : \n");
		shared_mem_linker = (void *)0x90000000;
		if(to_read == 1)
		{
			for(int i = 0 ; i < 255 ; i++)
			{
				printf("%c ",*((char*)shared_mem_linker + i));
				if((i %25 == 0) && (i > 0))
					printf("\n");
			}
		}
		
		break;
	}	

*/

}
