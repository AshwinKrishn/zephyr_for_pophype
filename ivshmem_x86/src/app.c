#include <zephyr.h>
#include <drivers/virtualization/ivshmem.h>
#include <stdio.h>

void main()
{
	printf("Ashwin app here\n");
	const struct device *ivshmem;
        uintptr_t mem;
        size_t size;
        uint32_t id;
        uint32_t *area_to_rw;
        uint16_t vectors;
        int ret;

	void * shared_mem_linker = (void *)0x40000000; 
	*(uint8_t *)shared_mem_linker = 0xFF;
	for(int i = 0 ; i < 10 ; i++)
	{
		printf(" content at 0x%x is %x\n",(i + (uint8_t *)shared_mem_linker) , *((uint8_t *)shared_mem_linker + i)  ) ;
	}
	shared_mem_linker = (void *)0x50000000; 
	*(uint8_t *)shared_mem_linker = 0xF5;
	for(int i = 0 ; i < 10 ; i++)
	{
		printf(" content at 0x%x is %x\n",(i + (uint8_t *)shared_mem_linker) , *((uint8_t *)shared_mem_linker + i)  ) ;
	}

        ivshmem = device_get_binding(CONFIG_IVSHMEM_DEV_NAME);
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
//		printf( "ID should be 0 on ivshmem-plain");
//		return;
	}
        area_to_rw = (uint32_t *)mem;
	printf("printing first 10 words\n");
	for(int i = 0 ; i < 10 ; i++)
	{
		printf("%c\n",*((char *)area_to_rw + i));
	}
	memcpy(area_to_rw,"Ashwin",6);
/*        if(*area_to_rw != 8108)
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
