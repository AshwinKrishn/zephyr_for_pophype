# zephyr_for_pophype
Zephyr base for pophype demonstration

How to build ARM64
1) west build -b qemu_cortex_a53 /home/ashwin/ep_aarch64/ -DCMAKE_VERBOSE_MAKEFILE=ON
2) copy the config file from application folder and paste it as .config in zephyrproject/build/zephyr/.config
