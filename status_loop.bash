#!/bin/bash

while true; do
    ~/server/status_script.bash
    echo "$(date) - Updated" >> ~/server/log.txt
    sleep 30
done
