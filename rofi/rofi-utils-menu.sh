#!/bin/bash

# Galculator
galculator="Galculator"
fullpathtogalculator="/usr/bin/galculator"

# KeepassXC
keepassxc="KeepassXC"
fullpathtokeepassxc="/usr/bin/keepassxc"

# Xarchiver
xarchiver="xarchiver"
fullpathtoxarchiver="/usr/bin/xarchiver"

# geeqie
geeqie="geeqie"
fullpathtogeeqie="/usr/bin/geeqie"

# sxiv
sxiv="sxiv [CLI]"
fullpathtosxiv="/usr/bin/sxiv sxiv $HOME/Bilder"


# Galculator
if [ x"$@" = x"$galculator" ]; then	    
    coproc ( $fullpathtogalculator > /dev/null  2>1 )
    exit 0
fi

# Keepassxc
if [ x"$@" = x"$keepassxc" ]; then	    
    coproc ( $fullpathtokeepassxc > /dev/null  2>1 )
    exit 0
fi

# Xarchiver
if [ x"$@" = x"$xarchiver" ]; then	    
    coproc ( $fullpathtoxarchiver > /dev/null  2>1 )
    exit 0
fi

# geeqie
if [ x"$@" = x"$geeqie" ]; then	    
    coproc ( $fullpathtogeeqie > /dev/null  2>1 )
    exit 0
fi

# sxiv
if [ x"$@" = x"$sxiv" ]; then	    
    coproc ( $fullpathtosxiv > /dev/null  2>1 )
    exit 0
fi

# Options presented at Rofi
echo $galculator
echo $keepassxc
echo $xarchiver
echo $geeqie
echo $sxiv
