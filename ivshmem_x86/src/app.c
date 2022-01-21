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
	char present;
	char arch[10];
};
void main()
{
	printf("x86 app here\n");
	struct shared_area rw_buf = {
		.write_area = (void*)0x50000000,
		.read_area  = (void*)0x5f000000
	};
	struct handshake hnsk = {
		.present = 0x1F,
	};	
	char already_present;
	memcpy(hnsk.arch, "x86",4);
	struct handshadahkes		
	printing("Attempting connection with other core ::\n");	
	memcpy(rw_buf.write_area,hnsk,sizeof(struct shared_area));
	
	while(1)
	{
		if()
		struct handshake * other = (struct handshake*)rw_buf.read_area;
		if(other->present = 0x1F)
		{
			printf("Other core of type %s conected ",other->arch);
		}
	}

	
/*	
	uint32_t time_stamp;
	uint32_t milliseconds_spent;
	int it = 0x83;
	int once = 1;
	{
		int to_write; 
		void * open_area = (void*)0x100000000;
		shared_mem_linker = (void *)0x50000000;
		for(int i = 0 ; i < 255 ; i++)
                {
			*((char *) shared_mem_linker + i ) = it;	
                }
		memcpy(shared_mem_linker , "Ashwin", 6);
		for(int i = 0 ; i < 255 ; i++)
                {
			*((char *) open_area + i ) = it +2;	
                }
		*((char*)shared_mem_linker ) = 'A' ;		
*/
/*		{
			printf("Contents in 0x50000000 area is : \n");
			for(int i = 0 ; i < 26 ; i++)
                        {
                                printf("%c ",*((char*)shared_mem_linker + i));
                                if((i %25 == 0) && (i > 0))
                                        printf("\n");
                        }

		}
		}
	}
*/
	printf("x86_kernel_exiting");
	while(1);
  /*      ivshmem = device_get_binding(CONFIG_IVSHMEM_DEV_NAME);
        if(ivshmem == NULL){
		printf( "Could not get ivshmem device");
		return;
	}
        size = ivshmem_get_mem(ivshmem, &mem);
        
	if(size == 0) {
		printf("Size cannot not be 0");
         	return;
	 }
	if((void *)mem == NULL){
		printf( "Shared memory cannot be null");
		return;
	}
        id = ivshmem_get_id(ivshmem);
        if(id != 0) {
		printf( "ID should be 0 on ivshmem-plain");
	}
        area_to_rw = (uint32_t *)mem;
	printf("printing first 10 words\n");
	for(int i = 0 ; i < 10 ; i++)
	{
		printf("%c\n",*((char *)area_to_rw + i));
	}
	memcpy(area_to_rw,"Ashwin",6);
*//*        if(*area_to_rw != 8108)
	{
                printf("Could not r/w to the shared memory");
		return;
	}
*/
	printf("Successfully wrote and read back in memory");
        /* Quickly verifying that non-plain features return proper code */
/*        vectors = ivshmem_get_vectors(ivshmem);
        zassert_equal(vectors, 0, "ivshmem-plain cannot have vectors");

        ret = z_impl_ivshmem_int_peer(ivshmem, 0, 0);
        zassert_equal(ret, -ENOSYS,
                      "interrupting peers should not be supported");

        ret = ivshmem_register_handler(ivshmem, NULL, 0);
        zassert_equal(ret, -ENOSYS,
                      "registering handlers should not be supported");
*/
}
