#!/bin/sh

LOGFILE="/tmp/system_health.log"

echo "Starting Embedded Linux System Health Monitor..."

while true
do
    echo "========================="
    date

    echo "CPU Load:"
    cat /proc/loadavg

    echo ""

    echo "Memory:"
    free -h

    echo ""

    echo "Disk:"
    df -h /

    echo ""

    {
        echo "========================="
        date
        echo "CPU Load:"
        cat /proc/loadavg
        echo "Memory:"
        free -h
        echo "Disk:"
        df -h /
    } >> "$LOGFILE"

    sleep 10
done
