#!/bin/bash
echo "Tailing logfiles to see rules"

echo "#" >> /var/log/modsec_audit.log
tail -f /var/log/modsec_audit.log &


echo "=" >> /var/log/debug.log
tail -f /var/log/debug.log &

echo "Starting nginx"
nginx -g 'daemon off;'