#!/bin/bash

# LeafPad
leafpad="LeafPad"
fullpathtoleafpad="/usr/bin/leafpad"

# Featherpad
featherpad="Featherpad"
fullpathtofeatherpad="/usr/bin/featherpad"

# MousePad
mousepad="MousePad"
fullpathtomousepad="/usr/bin/mousepad"

# Xed
xed="Xed"
fullpathtoxed="/usr/bin/xed"

# Nano (in maximized mode)
nano="nano"
runnano='sakura -m -e nano'


# LeafPad
if [ x"$@" = x"$leafpad" ]; then	
    # The preferred way of doing it in bash
    # https://github.com/davatorium/rofi/blob/next/doc/rofi-script.5.markdown
    coproc ( $fullpathtoleafpad > /dev/null  2>1 )
    exit 0
fi

# Featherpad
if [ x"$@" = x"$featherpad" ]; then	    
    coproc ( $fullpathtofeatherpad > /dev/null  2>1 )
    exit 0
fi

# MousePad
if [ x"$@" = x"$mousepad" ]; then	    
    coproc ( $fullpathtomousepad > /dev/null  2>1 )
    exit 0
fi

# Xed
if [ x"$@" = x"$xed" ]; then	    
    coproc ( $fullpathtoxed > /dev/null  2>1 )
    exit 0
fi

# Nano
if [ x"$@" = x"$nano" ]; then	    
    coproc ( $runnano > /dev/null  2>1 )
    exit 0
fi



# Options presented at Rofi prompt
echo $featherpad
echo $leafpad
echo $mousepad
echo $xed
echo $nano

