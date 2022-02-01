#define CONFIG_UART_INTERRUPT_DRIVEN 1
#define CONFIG_BUILD_OUTPUT_BIN 1
#define CONFIG_BOARD "qemu_cortex_a53"
#define CONFIG_SYS_CLOCK_HW_CYCLES_PER_SEC 62500000
#define CONFIG_NUM_IRQS 220
#define CONFIG_SOC "qemu_cortex_a53"
#define CONFIG_FLASH_SIZE 65536
#define CONFIG_FLASH_BASE_ADDRESS 0x0
#define CONFIG_KERNEL_VM_SIZE 0x800000
#define CONFIG_ZEPHYR_CANOPENNODE_MODULE 1
#define CONFIG_ZEPHYR_HAL_GIGADEVICE_MODULE 1
#define CONFIG_ZEPHYR_HAL_NORDIC_MODULE 1
#define CONFIG_ZEPHYR_HAL_NXP_MODULE 1
#define CONFIG_ZEPHYR_LORAMAC_NODE_MODULE 1
#define CONFIG_ZEPHYR_LZ4_MODULE 1
#define CONFIG_ZEPHYR_MBEDTLS_MODULE 1
#define CONFIG_ZEPHYR_NANOPB_MODULE 1
#define CONFIG_ZEPHYR_SOF_MODULE 1
#define CONFIG_ZEPHYR_TFLITE_MICRO_MODULE 1
#define CONFIG_ZEPHYR_TRACERECORDER_MODULE 1
#define CONFIG_ZEPHYR_TRUSTED_FIRMWARE_M_MODULE 1
#define CONFIG_ROM_START_OFFSET 0x0
#define CONFIG_ZEPHYR_ZSCILIB_MODULE 1
#define CONFIG_QEMU_TARGET 1
#define CONFIG_BOARD_QEMU_CORTEX_A53 1
#define CONFIG_SOC_QEMU_CORTEX_A53 1
#define CONFIG_ARCH "arm64"
#define CONFIG_CPU_CORTEX 1
#define CONFIG_CPU_CORTEX_A 1
#define CONFIG_CPU_CORTEX_A53 1
#define CONFIG_HAS_ARM_SMCCC 1
#define CONFIG_MAIN_STACK_SIZE 4096
#define CONFIG_IDLE_STACK_SIZE 4096
#define CONFIG_ISR_STACK_SIZE 4096
#define CONFIG_TEST_EXTRA_STACKSIZE 2048
#define CONFIG_SYSTEM_WORKQUEUE_STACK_SIZE 4096
#define CONFIG_CMSIS_THREAD_MAX_STACK_SIZE 4096
#define CONFIG_CMSIS_V2_THREAD_MAX_STACK_SIZE 4096
#define CONFIG_CMSIS_V2_THREAD_DYNAMIC_STACK_SIZE 4096
#define CONFIG_IPM_CONSOLE_STACK_SIZE 2048
#define CONFIG_AARCH64_IMAGE_HEADER 1
#define CONFIG_PRIVILEGED_STACK_SIZE 4096
#define CONFIG_KOBJECT_TEXT_AREA 4096
#define CONFIG_ARMV8_A_NS 1
#define CONFIG_ARMV8_A 1
#define CONFIG_GEN_ISR_TABLES 1
#define CONFIG_ARM_MMU 1
#define CONFIG_MMU_PAGE_SIZE 0x1000
#define CONFIG_ARM64_VA_BITS_32 1
#define CONFIG_ARM64_VA_BITS 32
#define CONFIG_ARM64_PA_BITS_32 1
#define CONFIG_ARM64_PA_BITS 32
#define CONFIG_MAX_XLAT_TABLES 16
#define CONFIG_ARM64 1
#define CONFIG_ARCH_IS_SET 1
#define CONFIG_64BIT 1
#define CONFIG_SRAM_SIZE 131072
#define CONFIG_SRAM_BASE_ADDRESS 0xa0000000
#define CONFIG_USERSPACE 1
#define CONFIG_KOBJECT_DATA_AREA_RESERVE_EXTRA_PERCENT 100
#define CONFIG_KOBJECT_RODATA_AREA_EXTRA_BYTES 16
#define CONFIG_MAX_THREAD_BYTES 2
#define CONFIG_DYNAMIC_OBJECTS 1
#define CONFIG_NOCACHE_MEMORY 1
#define CONFIG_GEN_SW_ISR_TABLE 1
#define CONFIG_ARCH_SW_ISR_TABLE_ALIGN 0
#define CONFIG_GEN_IRQ_START_VECTOR 0
#define CONFIG_ARCH_HAS_USERSPACE 1
#define CONFIG_ARCH_HAS_NOCACHE_MEMORY_SUPPORT 1
#define CONFIG_ARCH_HAS_THREAD_LOCAL_STORAGE 1
#define CONFIG_CPU_HAS_FPU 1
#define CONFIG_CPU_HAS_MMU 1
#define CONFIG_SRAM_REGION_PERMISSIONS 1
#define CONFIG_CACHE_MANAGEMENT 1
#define CONFIG_DCACHE_LINE_SIZE 0
#define CONFIG_ICACHE_LINE_SIZE 0
#define CONFIG_HAS_ARCH_CACHE 1
#define CONFIG_TOOLCHAIN_HAS_BUILTIN_FFS 1
#define CONFIG_MULTITHREADING 1
#define CONFIG_NUM_COOP_PRIORITIES 16
#define CONFIG_NUM_PREEMPT_PRIORITIES 15
#define CONFIG_MAIN_THREAD_PRIORITY 0
#define CONFIG_COOP_ENABLED 1
#define CONFIG_PREEMPT_ENABLED 1
#define CONFIG_PRIORITY_CEILING -127
#define CONFIG_NUM_METAIRQ_PRIORITIES 0
#define CONFIG_THREAD_STACK_INFO 1
#define CONFIG_THREAD_USERSPACE_LOCAL_DATA 1
#define CONFIG_ERRNO 1
#define CONFIG_SCHED_DUMB 1
#define CONFIG_WAITQ_DUMB 1
#define CONFIG_INIT_STACKS 1
#define CONFIG_BOOT_BANNER 1
#define CONFIG_BOOT_DELAY 0
#define CONFIG_SYSTEM_WORKQUEUE_PRIORITY -1
#define CONFIG_ATOMIC_OPERATIONS_BUILTIN 1
#define CONFIG_TIMESLICING 1
#define CONFIG_TIMESLICE_SIZE 0
#define CONFIG_TIMESLICE_PRIORITY 0
#define CONFIG_NUM_MBOX_ASYNC_MSGS 10
#define CONFIG_KERNEL_MEM_POOL 1
#define CONFIG_HEAP_MEM_POOL_SIZE 0
#define CONFIG_ARCH_HAS_CUSTOM_BUSY_WAIT 1
#define CONFIG_SYS_CLOCK_TICKS_PER_SEC 100
#define CONFIG_SYS_CLOCK_EXISTS 1
#define CONFIG_TIMEOUT_64BIT 1
#define CONFIG_SYS_CLOCK_MAX_TIMEOUT_DAYS 365
#define CONFIG_KERNEL_INIT_PRIORITY_OBJECTS 30
#define CONFIG_KERNEL_INIT_PRIORITY_DEFAULT 40
#define CONFIG_KERNEL_INIT_PRIORITY_DEVICE 50
#define CONFIG_APPLICATION_INIT_PRIORITY 90
#define CONFIG_MAX_DOMAIN_PARTITIONS 16
#define CONFIG_ARCH_MEM_DOMAIN_DATA 1
#define CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API 1
#define CONFIG_USE_SWITCH 1
#define CONFIG_USE_SWITCH_SUPPORTED 1
#define CONFIG_MP_NUM_CPUS 1
#define CONFIG_TICKLESS_KERNEL 1
#define CONFIG_KERNEL_VM_SUPPORT 1
#define CONFIG_KERNEL_VM_BASE 0xa0000000
#define CONFIG_KERNEL_VM_OFFSET 0x0
#define CONFIG_MMU 1
#define CONFIG_HAS_DTS 1
#define CONFIG_CONSOLE 1
#define CONFIG_CONSOLE_INPUT_MAX_LINE_LEN 128
#define CONFIG_CONSOLE_HAS_DRIVER 1
#define CONFIG_CONSOLE_INIT_PRIORITY 60
#define CONFIG_UART_CONSOLE 1
#define CONFIG_SERIAL 1
#define CONFIG_SERIAL_HAS_DRIVER 1
#define CONFIG_SERIAL_SUPPORT_INTERRUPT 1
#define CONFIG_SERIAL_INIT_PRIORITY 50
#define CONFIG_UART_USE_RUNTIME_CONFIGURE 1
#define CONFIG_UART_PL011 1
#define CONFIG_UART_PL011_PORT0 1
#define CONFIG_GIC 1
#define CONFIG_GIC_V3 1
#define CONFIG_GIC_VER 3
#define CONFIG_TIMER_HAS_64BIT_CYCLE_COUNTER 1
#define CONFIG_SYSTEM_CLOCK_INIT_PRIORITY 0
#define CONFIG_TICKLESS_CAPABLE 1
#define CONFIG_ARM_ARCH_TIMER 1
#define CONFIG_RISCV_MACHINE_TIMER_SYSTEM_CLOCK_DIVIDER 0
#define CONFIG_VIRTUALIZATION 1
#define CONFIG_SUPPORT_MINIMAL_LIBC 1
#define CONFIG_MINIMAL_LIBC 1
#define CONFIG_MINIMAL_LIBC_MALLOC 1
#define CONFIG_MINIMAL_LIBC_MALLOC_ARENA_SIZE 32768
#define CONFIG_MINIMAL_LIBC_CALLOC 1
#define CONFIG_MINIMAL_LIBC_REALLOCARRAY 1
#define CONFIG_MINIMAL_LIBC_LL_PRINTF 1
#define CONFIG_MINIMAL_LIBC_OPTIMIZE_STRING_FOR_SIZE 1
#define CONFIG_STDOUT_CONSOLE 1
#define CONFIG_CBPRINTF_COMPLETE 1
#define CONFIG_CBPRINTF_FULL_INTEGRAL 1
#define CONFIG_CBPRINTF_FP_SUPPORT 1
#define CONFIG_CBPRINTF_N_SPECIFIER 1
#define CONFIG_SYS_HEAP_ALLOC_LOOPS 3
#define CONFIG_POSIX_MAX_FDS 4
#define CONFIG_POSIX_API 1
#define CONFIG_PTHREAD_IPC 1
#define CONFIG_MAX_PTHREAD_COUNT 5
#define CONFIG_SEM_VALUE_MAX 32767
#define CONFIG_POSIX_CLOCK 1
#define CONFIG_MAX_TIMER_COUNT 5
#define CONFIG_APP_LINK_WITH_POSIX_SUBSYS 1
#define CONFIG_PRINTK 1
#define CONFIG_PRINTK_BUFFER_SIZE 32
#define CONFIG_EARLY_CONSOLE 1
#define CONFIG_ASSERT_VERBOSE 1
#define CONFIG_TEST_USERSPACE 1
#define CONFIG_TEST_LOGGING_FLUSH_AFTER_TEST 1
#define CONFIG_TEST_ENABLE_USERSPACE 1
#define CONFIG_TOOLCHAIN_ZEPHYR_0_13 1
#define CONFIG_LINKER_ORPHAN_SECTION_WARN 1
#define CONFIG_HAS_FLASH_LOAD_OFFSET 1
#define CONFIG_FLASH_LOAD_OFFSET 0x0
#define CONFIG_FLASH_LOAD_SIZE 0x0
#define CONFIG_LD_LINKER_SCRIPT_SUPPORTED 1
#define CONFIG_LD_LINKER_TEMPLATE 1
#define CONFIG_KERNEL_ENTRY "__start"
#define CONFIG_LINKER_SORT_BY_ALIGNMENT 1
#define CONFIG_SRAM_VECTOR_TABLE 1
#define CONFIG_SRAM_OFFSET 0x0
#define CONFIG_LINKER_GENERIC_SECTIONS_PRESENT_AT_BOOT 1
#define CONFIG_NO_OPTIMIZATIONS 1
#define CONFIG_COMPILER_COLOR_DIAGNOSTICS 1
#define CONFIG_COMPILER_OPT ""
#define CONFIG_RUNTIME_ERROR_CHECKS 1
#define CONFIG_KERNEL_BIN_NAME "zephyr"
#define CONFIG_OUTPUT_STAT 1
#define CONFIG_OUTPUT_DISASSEMBLY 1
#define CONFIG_OUTPUT_PRINT_MEMORY_USAGE 1
#define CONFIG_COMPAT_INCLUDES 1