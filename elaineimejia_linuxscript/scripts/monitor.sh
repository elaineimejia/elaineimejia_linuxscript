#!/bin/bash
# Monitor CPU and memory usage

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
mem=$(free -m | awk '/Mem:/ { printf("%.2f"), $3/$2*100 }')

echo "CPU Usage: $cpu%"
echo "Memory Usage: $mem%"

if (( ${cpu%.*} > 80 )); then
  echo "⚠️ High CPU usage!"
fi

if (( ${mem%.*} > 80 )); then
  echo "⚠️ High Memory usage!"
fi
