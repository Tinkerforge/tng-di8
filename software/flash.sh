#/bin/bash
dfu-util -a 0 -s 0x08000000:leave -D build/tng-di8-with-bootloader.bin
