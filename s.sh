#!/bin/sh

mkdir -p /data/ssh
for i in rsa dsa ecdsa ed25519; do
  test -r /data/ssh/$i || ssh-keygen -f /data/ssh/$i -t $i -N ''
done

mkdir -p /var/run/sshd
exec /usr/sbin/sshd -D -e
