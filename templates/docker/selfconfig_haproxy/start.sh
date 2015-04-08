#!/bin/bash

set -eo pipefail

export ETCD_ENDPOINT=${ETCD_ENDPOINT:-10.1.42.1:4001}

service rsyslog start

echo "[haproxy] booting container"

# Start the HAProxy service using the generated config
echo "[haproxy] starting haproxy service..."
service haproxy start

# Try to make initial configuration every 5 seconds until successful
until <TODO: run confd once to generate a valid config file>; do
    echo "[haproxy] waiting for confd to create initial haproxy configuration."
    sleep 5
done

# Put a continual polling `confd` process into the background to watch
# for changes every 10 seconds
<TODO: run confd every 10 seconds in background>
echo "[haproxy] confd is now monitoring etcd for changes..."

touch /var/log/haproxy.log
tail -f /var/log/haproxy.log
