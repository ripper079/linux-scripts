#!/bin/bash
clear
echo "Disconnecting from freenas Sever..."
echo
echo

# Get back "Original" user before becomming root with sudo  - using home folder
# **********		IMPORTANT - This MUST be set MANUALLY		**********
REALUSER_LOGGEDIN="kungen"


#		---				FIRST Share 			---	
# MOUNTPOINT_FOLDER="/home/kungen/mountpoints/winshares/bakup/"
MOUNTPOINT_FOLDER="/home/$REALUSER_LOGGEDIN/mountpoints/winshares/bakup/"
			
echo "Unmounting $MOUNTPOINT_FOLDER"

sudo umount $MOUNTPOINT_FOLDER
echo "Done!!!"
echo 
#		---				FIRST Share DONE		---	
# Repeat the process for more shares
