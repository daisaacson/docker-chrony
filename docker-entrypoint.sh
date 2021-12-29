#!/bin/bash
set -eo pipefail

_SERVERS_=${SERVERS:=pool.ntp.org}

sed -i.dockersave \
  -e 's/pool.ntp.org/'"$_SERVERS_"'/gi;' \
  /etc/chrony/chrony.conf

exec "$@"
