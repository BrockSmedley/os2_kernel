# initialize environment
source ./environment-setup-i586-poky-linux

# DEFAULT
#qemu-system-i386 -gdb tcp::5528 -S -nographic -kernel ../bzImage-qemux86.bin -drive file=../core-image-lsb-sdk-qemux86.ext4,if=virtio -enable-kvm -net none -usb -localtime --no-reboot --append "root=/dev/vda rw console=ttyS0 debug".

# CUSTOM
qemu-system-i386 -gdb tcp::5528 -S -nographic -kernel ./arch/x86/boot/bzImage -drive file=../core-image-lsb-sdk-qemux86.ext4,if=virtio -enable-kvm -net nic -net user -usb -localtime -redir tcp:8028::22 --no-reboot --append "root=/dev/vda rw console=ttyS0 debug".

