#!/bin/bash


# LibreOffice
libreoffice="LibreOffice"
fullpathtolibreoffice="/usr/bin/libreoffice"

# xchm
xchm="xCHM"
fullpathtoxchm="/usr/bin/xchm"

# qpdfview
qpdfview="qpdfview"
fullpathtoqpdfview="/usr/bin/qpdfview"

# Solanum
solanum="Solanum"
runsolanum="flatpak run org.gnome.Solanum"



# Libreoffice
if [ x"$@" = x"$libreoffice" ]; then	
    # The preferred way of doing it in bash
    # https://github.com/davatorium/rofi/blob/next/doc/rofi-script.5.markdown
    coproc ( $fullpathtolibreoffice > /dev/null  2>1 )
    exit 0
fi

# xchm
if [ x"$@" = x"$xchm" ]; then	    
    coproc ( $fullpathtoxchm > /dev/null  2>1 )
    exit 0
fi

# qpdfview
if [ x"$@" = x"$qpdfview" ]; then	    
    coproc ( $fullpathtoqpdfview > /dev/null  2>1 )
    exit 0
fi

# solanum
if [ x"$@" = x"$solanum" ]; then	    
    coproc ( $runsolanum > /dev/null  2>1 )
    exit 0
fi



# Options presented at Rofi
echo $libreoffice
echo $xchm
echo $qpdfview
echo $solanum
