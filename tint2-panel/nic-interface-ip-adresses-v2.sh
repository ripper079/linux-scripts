#!/bin/bash

# Author: Daniel
# Copyright/license: GPL
# Description - Display networks interfaces with ip adress in the tint2 panel with the Executor item


# Get all network interfaces
INTERFACES_ALL=$(ip -o link show | awk -F': ' '{print $2}')

my_interfaces=()
my_ipadresses=()

# Loop through each network interface
for interface in $INTERFACES_ALL; do
	# Filter this interface
	if [ "$interface" == "lo" ]; then
		continue  # Skip this iteration if the interface is 'lo'
	fi    
	ipCurrentInterface=$(ip -o -4 addr show $interface | awk '{print $4}')  
	#Filter interfaces that have not an ip adress
	if [ -z "$ipCurrentInterface" ]; then
		continue
	fi

	my_interfaces+=("$interface")
	my_ipadresses+=("$ipCurrentInterface")

	#interface_left_padding=$(printf "%-9s" "$interface");
	#echo "${interface_left_padding} - ${ipCurrentInterface}"
done

# Number of interfaces
count_interfaces=${#my_interfaces[@]}

if [[ $count_interfaces -eq 0 ]]; then
    # Could not find any valid interfaces
    exit 0
fi

# Determines max rows to show before inserting them into new column
max_rows=3
# Dynamically calculate columns
number_of_columns=0
if (( count_interfaces % max_rows != 0 )); then
	# If there is a remainder, add 1 to the result
	number_of_columns=$(( (count_interfaces / max_rows) + 1 ))
else
	# If no remainder, just return the result
	number_of_columns=$(( count_interfaces / max_rows ))
fi

interfaceinfo=()
for ((i=0; i<count_interfaces; i++)); do
	currentInterface="${my_interfaces[$i]}"
	currentIpadress="${my_ipadresses[$i]}"
	#Inserts padding to the RIGHT of the text.
	currentInterface_left_padding=$(printf "%-9s" "$currentInterface")
	#Inserts padding to the LEFT of the text
	currentIpadress_left_padding=$(printf "%-18s" "$currentIpadress")
	
	total_text="$currentInterface_left_padding $currentIpadress_left_padding"
	#echo "Total text|$total_text"
	interfaceinfo+=("$total_text")
done
for ((i=0; i<count_interfaces; i+=number_of_columns)); do
	# Print up to 3 interfaces in a line
	echo "${interfaceinfo[@]:i:number_of_columns}"
done
