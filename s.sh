#!/bin/sh

mkdir /var/run/sshd
/usr/bin/ssh-keygen -A
exec /usr/sbin/sshd -D -e
