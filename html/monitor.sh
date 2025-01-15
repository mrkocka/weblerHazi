#!/bin/bash
while true; do
  ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 16 | awk 'NR>1 {print "{\"pid\":" $1 ",\"name\":\"" $2 "\",\"cpu\":" $3 ",\"memory\":" $4 "},"}' | sed '$ s/,$//' > ~/docker_volume/processes.json
  sleep 15
done
