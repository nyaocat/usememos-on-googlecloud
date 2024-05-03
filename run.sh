#!/bin/sh

set -eux

export MEMOS_PORT="$PORT"

/usr/local/bin/litestream restore -if-replica-exists -config /etc/litestream.yml /var/opt/memos/memos_prod.db
exec /usr/local/bin/litestream replicate -exec /usr/local/memos/memos -config /etc/litestream.yml

