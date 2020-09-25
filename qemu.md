# android virtual machine

`#!/bin/sh
qemu-system-x86_64 \
-enable-kvm \
-boot d \
-cpu host \
-m 2048 \
-soundhw es1370 \
-device virtio-mouse-pci -device virtio-keyboard-pci \
-serial mon:stdio \
-boot menu=on \
-net nic \
-net user,hostfwd=tcp::5555-:22 \
-device virtio-vga,virgl=on \
-display gtk,gl=off \
-hda android_hda.img \
-cdrom android-x86-7.1-r4-k419.iso \
`

Resize qemu images:
`qemu-img resize name.img +1g`
