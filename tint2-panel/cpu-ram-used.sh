#!/bin/bash

# Author: Daniel

# CPU usage calculation
# Get CPU usage data from mpstat
# Run mpstat for all cores, and get the 'all' line for aggregated stats

#cpu_usage=$(mpstat -P all | grep "all" | grep -o '[^ ]*$' | awk '{print 100 - $1}')

# Display the average CPU usage
#echo "CPU: ${cpu_usage} %"

# Get total and used memory in KB
#TOTAL_RAM=$(free | awk '/^Minne:/ {print $2}')
#USED_RAM=$(free | awk '/^Minne:/ {print $3}')

# Calculate the percentage of used RAM
#RAM_PERCENTAGE=$(echo "scale=2; ($USED_RAM / $TOTAL_RAM) * 100" | bc)

# Output the RAM usage as a percentage
#echo "RAM: ${RAM_PERCENTAGE} %"



# New implementation
# Get first row where CPU is 'all'
cpu_idle=$(mpstat 1 1 | tail -1 | awk '{print $NF}')
# Format this number format xx.xx
formatted_cpu_idle=$(echo "$cpu_idle" | sed 's/[^0-9]/./g')

# Subtracte CPU idle from 100 to get CPU usage
cpu_usage=$(echo "100 - $formatted_cpu_idle" | bc)
# if the result return .xx insert a 0 in front of it
if [[ $cpu_usage == .* ]]; then
  cpu_usage="0$cpu_usage"
fi

cpu_use_padding=$(printf "%6s" "$cpu_usage")
echo "CPU: ${cpu_use_padding}%"

ram_usage=$(free | awk '/Minne/ {printf("%.2f\n", ($3/$2)*100)}')
ram_usage_padding=$(printf "%6s" "$ram_usage")

echo "RAM: ${ram_usage_padding}%"
