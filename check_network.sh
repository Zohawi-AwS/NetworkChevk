#!/bin/bash
# network_check.sh

SERVERS=("google.com" "github.com" "localhost")
LOGFILE=~/network_check.log

echo "Network Check - $(date)" > $LOGFILE
for s in "${SERVERS[@]}"; do
    if ping -c 1 $s &> /dev/null; then
        echo "$s is reachable ✅" >> $LOGFILE
    else
        echo "$s is not reachable ❌" >> $LOGFILE
    fi
done

cat $LOGFILE
