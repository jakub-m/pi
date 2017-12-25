#!/bin/bash

set -eu
set -x

if [ "$(whoami)" != "root" ]; then
    echo Must be root!
    exit 1
fi

mount --uuid 10EB-1A31 -t auto -o uid=1000,gid=1000 /media/walizka
mount --uuid 0446-16F3 -t auto -o uid=1000,gid=1000 /media/backup
