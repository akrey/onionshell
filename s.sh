#!/bin/sh

mkdir -p /data/ssh
for i in rsa dsa ecdsa ed25519; do
  fn=/data/ssh/ssh_host_${i}_key
  test -r "$fn" || ssh-keygen -f "$fn" -t $i -N ''
done

mkdir -p /var/run/sshd
exec /usr/sbin/sshd -D -e
