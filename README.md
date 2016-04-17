# Debian Mipsel on Qemu

Debian (Wheezy) Mipsel running in Qemu. See https://people.debian.org/~aurel32/qemu/mipsel/ for more information.

To start this container:

    docker run -t -i hypnza/qemu_debian_mipsel

It might appear to hang at the lines below:

    [    0.000000] CPU frequency 200.00 MHz
    [    0.000000] Console: colour dummy device 80x25
    [    0.000000] console [tty0] enabled, bootconsole disabled

But just give it a minute or two and you should be greeted by a login prompt:

    Debian GNU/Linux 7 debian-mipsel ttyS0

    debian-mipsel login:

(login with root/root or user/user)
