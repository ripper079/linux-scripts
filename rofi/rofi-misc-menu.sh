#!/bin/bash


# FireFox
firefox="Firefox"
pathtofirefox="/usr/bin/firefox"

# Chromium
chromium="Chromium"
pathtochromium="/usr/bin/chromium"

# ThunderBird
thunderbird="Thunderbird"
pathtothunderbird="/usr/bin/thunderbird"

# pcmanFm 
pcmanfm="PCManFM"
pathtopcmanfm="/usr/bin/pcmanfm"

# Ranger
ranger="Ranger [CLI]"
pathtoranger="$terminalexecuteclicmd /usr/bin/ranger"

# FileZilla
filezilla="FileZilla"
pathtofilezilla="/usr/bin/filezilla"

# qbittorrent
qbittorrent="qBittorrent"
pathtoqbittorrent="/usr/bin/qbittorrent"

# Transmission
transmission="Transmission"
pathtotransmission="/usr/bin/transmission-gtk"

# sxiv
sxiv="Sxiv"
pathtosxiv="/usr/bin/sxiv sxiv $HOME/Bilder"

# firefox
if [ x"$@" = x"$firefox" ]; then	    
    coproc ( $pathtofirefox > /dev/null  2>1 )
    exit 0
fi

# chromium
if [ x"$@" = x"$chromium" ]; then	    
    coproc ( $pathtochromium > /dev/null  2>1 )
    exit 0
fi

# thunderbird
if [ x"$@" = x"$thunderbird" ]; then	    
    coproc ( $pathtothunderbird > /dev/null  2>1 )
    exit 0
fi

# pcmanfm
if [ x"$@" = x"$pcmanfm" ]; then	    
    coproc ( $pathtopcmanfm > /dev/null  2>1 )
    exit 0
fi

# ranger
if [ x"$@" = x"$ranger" ]; then	    
    coproc ( $pathtoranger > /dev/null  2>1 )
    exit 0
fi

# filezilla
if [ x"$@" = x"$filezilla" ]; then	    
    coproc ( $pathtofilezilla > /dev/null  2>1 )
    exit 0
fi

# qbittorrent
if [ x"$@" = x"$qbittorrent" ]; then	    
    coproc ( $pathtoqbittorrent > /dev/null  2>1 )
    exit 0
fi

# transmission
if [ x"$@" = x"$transmission" ]; then	    
    coproc ( $pathtotransmission > /dev/null  2>1 )
    exit 0
fi

# sxiv
if [ x"$@" = x"$sxiv" ]; then	    
    coproc ( $pathtosxiv > /dev/null  2>1 )
    exit 0
fi


# Options presented at Rofi
echo $firefox
echo $chromium
echo $thunderbird
echo $pcmanfm
echo $ranger
echo $filezilla
echo $qbittorrent
echo $transmission
echo $sxiv
