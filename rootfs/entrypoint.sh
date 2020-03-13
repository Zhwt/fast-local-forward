#!/bin/sh

/usr/sbin/sshd -e -f sshd_config
ssh-keyscan 127.0.0.1 > known_hosts
chmod 0600 known_hosts
sshpass -p 'root' \
    ssh -o UserKnownHostsFile=known_hosts -C -N -g \
    -L 0.0.0.0:2222:$REMOTE_HOST:$REMOTE_PORT \
    root@127.0.0.1
