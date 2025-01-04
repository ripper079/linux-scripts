#!/bin/bash

# Author: Daniel

# Disk storage remaining
# /
root_mount_storage_availible_left=$(df -hT -x tmpfs -x devtmpfs | grep ' /$' | awk '{print $6}')
root_mount_storage_availible_left_padding=$(printf "%4s" "$root_mount_storage_availible_left")

# /home
home_mount_storage_availible_left=$(df -hT -x tmpfs -x devtmpfs | grep ' /home$' | awk '{print $6}')
home_mount_storage_availible_left_padding=$(printf "%4s" "$home_mount_storage_availible_left")

# /mnt/mediastorage
mnt_mediastorage_mount_storage_availible_left=$(df -hT -x tmpfs -x devtmpfs | grep ' /mnt/mediastorage$' | awk '{print $6}')
mnt_mediastorage_mount_storage_availible_left_padding=$(printf "%4s" "$mnt_mediastorage_mount_storage_availible_left")

#echo "Storage"
echo "/                 ${root_mount_storage_availible_left_padding}"
echo "/home             ${home_mount_storage_availible_left_padding}"
echo "/mnt/mediastorage ${mnt_mediastorage_mount_storage_availible_left_padding}"
