#!/bin/sh
mkdir -p /data/t
chown tor /data/t
chmod 700 /data/t

exec su -s /bin/sh -c "exec /usr/bin/tor -f /app/torrc" tor
