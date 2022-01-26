#!/bin/bash

# Hardware Info
hardinfo="HardInfo"
pathtohardinfo="/usr/bin/hardinfo"

# cpu-x
cpux="cpu-x"
pathtocpux="/usr/bin/cpu-x"


# Hardware Info
if [ x"$@" = x"$hardinfo" ]; then	    
    coproc ( $pathtohardinfo > /dev/null  2>1 )        
    exit 0
fi

# cpu-x
if [ x"$@" = x"$cpux" ]; then	    
    coproc ( $pathtocpux > /dev/null  2>1 )        
    exit 0
fi



# Options presented at Rofi prompt
echo $hardinfo
echo $cpux


