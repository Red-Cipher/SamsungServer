#!/bin/bash

while true; do
    ~/server/status_script.bash
    echo "$(date) - Updated" >> log.txt
    sleep 30
done &
