FROM    asmimproved/qemu-mips

RUN     apt-get install -y curl
RUN     curl -o vmlinux-3.2.0-4-4kc-malta https://people.debian.org/~aurel32/qemu/mipsel/vmlinux-3.2.0-4-4kc-malta
RUN     curl -o debian_wheezy_mipsel_standard.qcow2 https://people.debian.org/~aurel32/qemu/mipsel/debian_wheezy_mipsel_standard.qcow2

CMD     qemu-system-mipsel -M malta -kernel vmlinux-3.2.0-4-4kc-malta -hda debian_wheezy_mipsel_standard.qcow2 -append "root=/dev/sda1 console=tty0" -nographic
