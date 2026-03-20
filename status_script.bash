#!/bin/bash

IP=$(ifconfig 2>/dev/null | grep "inet " | sed 's/netmask.*$//' | grep -v '127.0.0.1' | awk '{print $2}')
UPTIME=$(uptime -p | cut -d" " -f2-)
PORT="80"
USER_Name=$(whoami)
OS=$(uname -o)

echo "{\"IP\":\"$IP\", \"Time\":\"$UPTIME\", \"Port Number\":\"$PORT\", \"Operator\":\"$USER_Name\", \"Operating System\":\"$OS\"}" | jq '.' > ~/server/info.json
