#!/bin/bash

while :
    do

mem_usage=`free -m | awk 'NR==2{printf "%s", $3,$2 }'`;
disk_usage=`df -h | awk '$NF=="/"{printf "%d", $3,$2,$5}'`;
cpu_load=`top -bn1 | grep load | awk '{printf "%.2f", $(NF-2)}'`; 

        mosquitto_pub -h 127.0.0.1 -t pi/telemetry --qos 1 -m "{\"mem_usage\": $mem_usage,\"disk_usage\": $disk_usage,\"cpu_load\": $cpu_load}";
sleep 10
    done
