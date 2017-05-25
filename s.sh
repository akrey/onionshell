#!/bin/sh

mkdir /var/run/sshd
exec /usr/sbin/sshd -D -e
