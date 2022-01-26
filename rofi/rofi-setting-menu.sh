#!/bin/bash

# Alsa mixer
alsamixer="AlsaMixer"
pathtoalsamixer="sakura -e /usr/bin/alsamixer"

# Pavocontrol
pavocontrol="Pavu Control"
pathtopavocontrol="/usr/bin/pavucontrol"

# CUPS
cups="CUPS"
pathtocups="xdg-open http://localhost:631/"

# Printer Setting
printersettings="Printer Settings"
pathtoprintersettings="/usr/bin/system-config-printer"

# lxappearance
lxappearance="LxAppearance"
pathtolxappearance="/usr/bin/lxappearance"

# tint2
tint2="tint2 config"
pathtotint2="/usr/bin/tint2conf"



# alsamixer
if [ x"$@" = x"$alsamixer" ]; then	    
    coproc ( $pathtoalsamixer > /dev/null  2>1 )        
    exit 0
fi

# pavocontrol
if [ x"$@" = x"$pavocontrol" ]; then	    
    coproc ( $pathtopavocontrol > /dev/null  2>1 )        
    exit 0
fi

# CUPS
if [ x"$@" = x"$cups" ]; then	    
    coproc ( $pathtocups > /dev/null  2>1 )        
    exit 0
fi

# Printer Setting
if [ x"$@" = x"$printersettings" ]; then	    
    coproc ( $pathtoprintersettings > /dev/null  2>1 )        
    exit 0
fi

# lxappearance
if [ x"$@" = x"$lxappearance" ]; then	    
    coproc ( $pathtolxappearance > /dev/null  2>1 )        
    exit 0
fi
# tint2
if [ x"$@" = x"$tint2" ]; then	    
    coproc ( $pathtotint2 > /dev/null  2>1 )        
    exit 0
fi



# Options presented at Rofi prompt
echo $alsamixer
echo $pavocontrol
echo $cups
echo $printersettings
echo $lxappearance
echo $tint2
