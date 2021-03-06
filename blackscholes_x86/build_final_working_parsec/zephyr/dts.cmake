add_custom_target(devicetree_target)

set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,sram" "/memory@0")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,flash" "/flash@500000")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,console" "/soc/uart@3f8")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,shell-uart" "/soc/uart@3f8")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,bt-uart" "/soc/uart@2f8")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,uart-pipe" "/soc/uart@2f8")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,bt-mon-uart" "/soc/uart@2f8")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,code-partition" "/sim_flash/flash_sim@0/partitions/partition@11000")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,flash-controller" "/sim_flash")
set_target_properties(devicetree_target PROPERTIES "DT_ALIAS|uart-0" "/soc/uart@3f8")
set_target_properties(devicetree_target PROPERTIES "DT_ALIAS|uart-1" "/soc/uart@2f8")
set_target_properties(devicetree_target PROPERTIES "DT_ALIAS|eeprom-1" "/eeprom1")
set_target_properties(devicetree_target PROPERTIES "DT_ALIAS|eeprom-0" "/eeprom0")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/|compatible" "qemu,x86_emulator;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/chosen" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_REG|/chosen|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/chosen|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/chosen|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/aliases" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_REG|/aliases|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/aliases|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/aliases|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/cpus" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/cpus/cpu@0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|d-cache-line-size" "64")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|compatible" "intel,x86;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|reg" "0;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|ADDR" "0x0;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|SIZE" "NONE;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/ioapic@fec00000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|intc" "/ioapic@fec00000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/ioapic@fec00000|reg" "4273995776;4096;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/ioapic@fec00000|interrupt-controller" "True")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/ioapic@fec00000|compatible" "intel,ioapic;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/ioapic@fec00000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/ioapic@fec00000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/ioapic@fec00000|ADDR" "0xfec00000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/ioapic@fec00000|SIZE" "0x1000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/memory@0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|dram0" "/memory@0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/memory@0|reg" "0;4194304;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/memory@0|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/memory@0|ADDR" "0x0;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/memory@0|SIZE" "0x400000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc|compatible" "simple-bus;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/uart@3f8" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|uart0" "/soc/uart@3f8")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|reg" "1016;256;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|clock-frequency" "1843200")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|current-speed" "115200")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|label" "UART_0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|hw-flow-control" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|compatible" "ns16550;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|interrupts" "4;256;3;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@3f8|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@3f8|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@3f8|ADDR" "0x3f8;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@3f8|SIZE" "0x100;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/uart@2f8" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|uart1" "/soc/uart@2f8")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|reg" "760;256;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|clock-frequency" "1843200")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|current-speed" "115200")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|label" "UART_1")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|hw-flow-control" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|compatible" "ns16550;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|interrupts" "3;256;3;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@2f8|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@2f8|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@2f8|ADDR" "0x2f8;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@2f8|SIZE" "0x100;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/hpet@fed00000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|hpet" "/soc/hpet@fed00000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|reg" "4275044352;1024;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|interrupts" "2;0;4;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|compatible" "intel,hpet;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|label" "HPET")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/hpet@fed00000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/hpet@fed00000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/hpet@fed00000|ADDR" "0xfed00000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/hpet@fed00000|SIZE" "0x400;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/eth@febc0000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|eth0" "/soc/eth@febc0000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|reg" "4273733632;256;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|interrupts" "11;256;3;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|compatible" "intel,e1000;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|label" "eth0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/eth@febc0000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/eth@febc0000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/eth@febc0000|ADDR" "0xfebc0000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/eth@febc0000|SIZE" "0x100;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/flash@500000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|flash0" "/flash@500000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/flash@500000|compatible" "soc-nv-flash;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/flash@500000|reg" "5242880;4194304;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/flash@500000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/flash@500000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/flash@500000|ADDR" "0x500000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/flash@500000|SIZE" "0x400000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|sim_flash" "/sim_flash")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash|label" "FLASH_SIMULATOR")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash|erase-value" "255")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash|compatible" "zephyr,sim-flash;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|flash_sim0" "/sim_flash/flash_sim@0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0|erase-block-size" "1024")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0|write-block-size" "4")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0|compatible" "soc-nv-flash;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0|reg" "0;1048576;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0|ADDR" "0x0;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0|SIZE" "0x100000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0/partitions" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0/partitions/partition@1000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|storage_partition" "/sim_flash/flash_sim@0/partitions/partition@1000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@1000|label" "storage")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@1000|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@1000|reg" "4096;65536;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@1000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@1000|ADDR" "0x1000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@1000|SIZE" "0x10000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0/partitions/partition@11000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|slot0_partition" "/sim_flash/flash_sim@0/partitions/partition@11000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@11000|label" "image-0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@11000|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@11000|reg" "69632;65536;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@11000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@11000|ADDR" "0x11000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@11000|SIZE" "0x10000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0/partitions/partition@21000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|slot1_partition" "/sim_flash/flash_sim@0/partitions/partition@21000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@21000|label" "image-1")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@21000|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@21000|reg" "135168;65536;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@21000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@21000|ADDR" "0x21000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@21000|SIZE" "0x10000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/sim_flash/flash_sim@0/partitions/partition@31000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|eepromemu_partition" "/sim_flash/flash_sim@0/partitions/partition@31000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@31000|label" "eeprom-emu")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@31000|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/sim_flash/flash_sim@0/partitions/partition@31000|reg" "200704;65536;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@31000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@31000|ADDR" "0x31000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/sim_flash/flash_sim@0/partitions/partition@31000|SIZE" "0x10000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/eeprom1" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|eeprom1" "/eeprom1")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|size" "4096")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|pagesize" "8192")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|rambuf" "True")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|partition-erase" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|label" "EEPROM_1")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|compatible" "zephyr,emu-eeprom;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom1|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom1|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom1|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom1|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/eeprom0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|eeprom0" "/eeprom0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|size" "4096")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|read-only" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|label" "EEPROM_0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|compatible" "zephyr,sim-eeprom;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/eeprom0|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom0|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom0|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/eeprom0|SIZE" "")
