add_custom_target(devicetree_target)

set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,sram" "/soc/memory@40000000")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,console" "/soc/uart@9000000")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,shell-uart" "/soc/uart@9000000")
set_target_properties(devicetree_target PROPERTIES "DT_CHOSEN|zephyr,flash" "/soc/flash@0")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/|compatible" "qemu,arm-cortex-a53;")
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
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc|compatible" "simple-bus;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/interrupt-controller@8000000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|gic" "/soc/interrupt-controller@8000000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/interrupt-controller@8000000|reg" "0;134217728;0;65536;0;134873088;0;16121856;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/interrupt-controller@8000000|label" "GIC")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/interrupt-controller@8000000|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/interrupt-controller@8000000|compatible" "arm,gic;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/interrupt-controller@8000000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/interrupt-controller@8000000|NUM" "2")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/interrupt-controller@8000000|ADDR" "0x8000000;0x80a0000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/interrupt-controller@8000000|SIZE" "0x10000;0xf60000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/uart@9000000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|uart0" "/soc/uart@9000000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|reg" "0;150994944;0;4096;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|interrupts" "0;1;2;0;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|current-speed" "115200")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|label" "UART_0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|hw-flow-control" "False")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|status" "okay")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|compatible" "arm,pl011;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|interrupt-names" "irq_0;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/uart@9000000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@9000000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@9000000|ADDR" "0x9000000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/uart@9000000|SIZE" "0x1000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/flash@0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|flash0" "/soc/flash@0")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/flash@0|compatible" "cfi-flash;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/flash@0|reg" "0;0;0;67108864;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/flash@0|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/flash@0|ADDR" "0x0;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/flash@0|SIZE" "0x4000000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/soc/memory@40000000" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|sram0" "/soc/memory@40000000")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/memory@40000000|reg" "0;1073741824;0;134217728;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/memory@40000000|compatible" "mmio-sram;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/soc/memory@40000000|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/memory@40000000|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/memory@40000000|ADDR" "0x40000000;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/soc/memory@40000000|SIZE" "0x8000000;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/cpus" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/cpus/cpu@0" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|compatible" "arm,cortex-a53;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|reg" "0;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@0|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|ADDR" "0x0;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@0|SIZE" "NONE;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/cpus/cpu@1" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@1|compatible" "arm,cortex-a53;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@1|reg" "1;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/cpus/cpu@1|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@1|NUM" "1")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@1|ADDR" "0x1;")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/cpus/cpu@1|SIZE" "NONE;")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/timer" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/timer|interrupts" "1;13;2;160;1;14;2;160;1;11;2;160;1;10;2;160;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/timer|label" "arch_timer")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/timer|compatible" "arm,armv8-timer;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/timer|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/timer|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/timer|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/timer|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/apb-pclk" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_NODELABEL|uartclk" "/apb-pclk")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/apb-pclk|clock-frequency" "24000000")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/apb-pclk|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/apb-pclk|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/apb-pclk|SIZE" "")
set_target_properties(devicetree_target PROPERTIES "DT_NODE|/psci" TRUE)
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/psci|label" "PSCI")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/psci|method" "hvc")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/psci|compatible" "arm,psci-0.2;")
set_target_properties(devicetree_target PROPERTIES "DT_PROP|/psci|wakeup-source" "False")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/psci|NUM" "0")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/psci|ADDR" "")
set_target_properties(devicetree_target PROPERTIES "DT_REG|/psci|SIZE" "")