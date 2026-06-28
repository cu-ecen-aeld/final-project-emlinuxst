#!/bin/sh

echo "======================================"
echo " Embedded Linux System Health Monitor "
echo "======================================"

echo
echo "System Time:"
date

echo
echo "System Uptime:"
uptime

echo
echo "CPU Information:"
cat /proc/cpuinfo | grep "model name" | head -1

echo
echo "Memory Information:"
cat /proc/meminfo | head -5

echo
echo "Disk Usage:"
df -h

echo
echo "Health monitor completed successfully."
