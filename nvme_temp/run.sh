#!/bin/bash

while true
do
  TEMP=$(nvme smart-log /dev/nvme0 | grep "temperature" | awk '{print $3}')
  echo "NVMe Temperatur: $TEMP°C"
  sleep 300
done
