#!/bin/sh
mkdir -p /data/t
chown tor /data/t
chmod 700 /data/t

exec /bin/aenv --pwnam tor /usr/bin/tor -f /app/torrc
