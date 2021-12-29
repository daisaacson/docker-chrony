#!/bin/bash
set -eo pipefail

_SERVER_=${SERVER:=pool.ntp.org}

sed -i.dockersave \
  -e 's/pool.ntp.org/'"$_SERVER_"'/gi;' \
  /etc/chrony/chrony.conf

exec "$@"
