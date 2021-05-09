Run the emulation with:

  qemu-system-x86_64 -M pc \
    -kernel output/images/bzImage \
    -drive file=output/images/rootfs.ext2,if=virtio,format=raw \
    -append "rootwait root=/dev/vda console=tty1 console=ttyS0 nokaslr" \
    -serial stdio \
    -net nic,model=virtio \
    -net user \
    -gdb tcp::1234 \
    -S # wait for gdb to connect

Optionally add -smp N to emulate a SMP system with N CPUs.

The login prompt will appear in the graphical window.
