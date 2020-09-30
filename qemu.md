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

# Alpine Linux setup

`qemu-system-x86_64 \
-enable-kvm \
-m 512 \
-net nic \
-net user \
-hda alpine.img \
-cdrom alpine-standard-3.12.0-x86_64.iso \`

- Create image:
`qemu-img create -f qcow2 example.img 10G`

- install dependencies

Git:
`apk add git`

Python and pip:
`apk add python3`
`apk add python3-dev libffi-dev openssl-dev gcc libc-dev make`
`python3 -m ensurepip`
`pip3 install -r requirements.txt`

Libraries to compile and execute binaries:
`apk add libstdc++ libc6-compat`

Docker:
`apk add docker`
`rc-update add docker boot`
`service docker start`
[fixing possible errors](https://www.how2shout.com/how-to/how-to-install-docker-ce-on-alpine-linux.html)

Selenoid:
`apk add curl`
`curl -o cm https://github.com/aerokube/cm/releases/download/1.7.2/cm_linux_amd64`
`chmod +x filename`
`./cm selenoid start --browsers 'firefox:80.0'`
or
`./cm selenoid start --vnc`


Check localhost:
`vi /etc/hosts`
