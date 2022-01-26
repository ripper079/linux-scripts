#!/bin/bash

# CMatrix on all 3 monitors in fake 'Full screen/maximized mode'
# -bl       Disable window decoration
cmatrixsim="Matrix Power [Screen saver across 3 screens]"
leftcmatrix='urxvt -bl -geometry 174x61+0+0 -e cmatrix'
rightcmatrix='urxvt -bl -geometry 174x61-0+0 -e cmatrix'
middlecmatrix='urxvt -bl -geometry 174x54+1920+0 -e cmatrix'


# CMatrix 
if [ x"$@" = x"$cmatrixsim" ]; then	        
    coproc ( $leftcmatrix > /dev/null  2>1 )    
    coproc ( $rightcmatrix > /dev/null  2>1 )
    coproc ( $middlecmatrix > /dev/null  2>1 )
    exit 0
fi



# Options presented at Rofi prompt
echo $cmatrixsim


