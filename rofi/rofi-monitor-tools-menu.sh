#!/bin/bash

terminalclicmd="sakura -e"

# BpyTOP , run in middle screen
bpytop="[System] - BpyTOP"
runbpytop="$terminalclicmd /usr/bin/bpytop"

# RadeonTop
raderontop="[GPU] - RadeonTop"
runraderontop="$terminalclicmd /usr/bin/radeontop"

# BMon
bmon="[Network] - BMon"
runbmon="$terminalclicmd /usr/bin/bmon"

# ncdu
ncdu="[Disk Usage] - NcDu"
runncdu="$terminalclicmd /usr/bin/ncdu"

# gdmap
gdmap="[Disk Usage] - gdmap"
rungdmap="/usr/bin/gdmap"

# nmon
nmon="[System] - nmon"
runnmon="$terminalclicmd  /usr/bin/nmon"

# Bpytop
if [ x"$@" = x"$bpytop" ]; then		    
    coproc ( $runbpytop > /dev/null  2>1 )
    exit 0
fi

# RadeonTop
if [ x"$@" = x"$raderontop" ]; then		    
    coproc ( $runraderontop > /dev/null  2>1 )
    exit 0
fi

# BMon
if [ x"$@" = x"$bmon" ]; then		    
    coproc ( $runbmon > /dev/null  2>1 )
    exit 0
fi

# ncdu
if [ x"$@" = x"$ncdu" ]; then		    
    coproc ( $runncdu > /dev/null  2>1 )
    exit 0
fi

# gdmap
if [ x"$@" = x"$gdmap" ]; then		    
    coproc ( $rungdmap > /dev/null  2>1 )
    exit 0
fi

# nmon
if [ x"$@" = x"$nmon" ]; then		    
    coproc ( $runnmon > /dev/null  2>1 )
    exit 0
fi



# Options presented at Rofi prompt
echo $nmon
echo $bpytop
echo $raderontop
echo $bmon
echo $ncdu
echo $gdmap

