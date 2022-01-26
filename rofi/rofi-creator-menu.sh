#!/bin/bash

# Blender
blender="Blender"
fullpathtoblender="/usr/bin/blender"

# FreeCad
freecad="FreeCad"
fullpathtofreecad="/usr/bin/freecad"

# Gimp
gimp="Gimp"
fullpathtogimp="/usr/bin/gimp"

# Inkscape
inkscape="Inkscape"
fullpathtoinkscape="/usr/bin/inkscape"

# Krita
krita="Krita"
fullpathtokrita="/usr/bin/krita"


# For Blender
if [ x"$@" = x"$blender" ]; then	    
    coproc ( $fullpathtoblender > /dev/null  2>1 )
    exit 0
fi

# For FreeCad
if [ x"$@" = x"$freecad" ]; then	    
    coproc ( $fullpathtofreecad > /dev/null  2>1 )
    exit 0
fi

# For Gimp
if [ x"$@" = x"$gimp" ]; then	    
    coproc ( $fullpathtogimp > /dev/null  2>1 )
    exit 0
fi

# For Inkscape
if [ x"$@" = x"$inkscape" ]; then	    
    coproc ( $fullpathtoinkscape > /dev/null  2>1 )
    exit 0
fi

# For Krita
if [ x"$@" = x"$krita" ]; then	    
    coproc ( $fullpathtokrita > /dev/null  2>1 )
    exit 0
fi



# Options presented at Rofi prompt
echo $blender
echo $freecad
echo $gimp
echo $inkscape
echo $krita


