#!/bin/bash
while true; do
  ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 15 > ~/docker_volume/processes.txt
  sleep 15
done

