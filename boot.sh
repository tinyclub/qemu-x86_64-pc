#!/bin/bash

KVER=v5.1
RVER=2019.02.2

qemu-system-x86_64 -M pc -m 1024M -smp 4 -no-reboot -nographic \
	-kernel kernel/$KVER/bzImage \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0  console=ttyS0' \
	#-net nic,model=ne2k_pci -net tap 
