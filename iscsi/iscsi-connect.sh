#!/bin/bash
# This script needs to run with sudo premissions!

clear

# On the Freenas box
BASENAME="iqn.2005-10.org.freenas.ctl"
TARGETNAME="iscsitargetworkstation"
FULL_TARGETNAME="$BASENAME:$TARGETNAME"

# On the initiator side make sure that a nic has an IP adress that is
# on the same subnet as PORTAL_IP

# Sometimes called target IP
PORTAL_IP="10.150.150.5"
# Default portnumber for iscsi connections
PORTAL_PORT="3260"
FULL_PORTALPATH="$PORTAL_IP:$PORTAL_PORT"


# sudo iscsiadm -m node --targetname iqn.2005-10.org.freenas.ctl:iscsitargetworkstation -p 10.150.150.5:3260 --login
#	----------		Login Session		----------
sudo iscsiadm -m node --targetname $FULL_TARGETNAME -p $FULL_PORTALPATH --login

# Sleep for 2 second in case of buzy network. Without this line
# Mounting may not complete correctly!
sleep 2


# This is predefined - After partion is made of the new disk
# an UUID get assigned to that partion
# **********		IMPORTANT - This MUST be set MANUALLY		**********
UUID_OF_FREENAS_DISC="9c5e56b6-07d0-4225-b619-b65f84ddcb02"
# Find out the UUID with the command - sudo blkid

# Get back "Original" user before becomming root with sudo 
# **********		IMPORTANT - This MUST be set MANUALLY		**********
REALUSER_LOGGEDIN="kungen"
MOINTPOINT_FOLDER="/home/$REALUSER_LOGGEDIN/mountpoints/iscsi/"

# Mount the new drive
# mount -U 1234-SOME-UUID /some/mount/folder/
echo ""
echo "Mounting to $MOINTPOINT_FOLDER ..."
sudo mount -U $UUID_OF_FREENAS_DISC $MOINTPOINT_FOLDER
echo "Mounting done!!!"
echo ""
