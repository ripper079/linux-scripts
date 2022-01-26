#!/bin/bash

# Codeblocks
codeblocks="CodeBlocks"
fullpathtocodeblocks="/usr/bin/codeblocks"

# Geany
geany="Geany"
fullpathtogeany="/usr/bin/geany"

# MySQL Workbench
mysqlworkbench="MySQL Workbench"
fullpathtomysqlworkbench="/usr/bin/mysql-workbench"

# KDevelop
kdevelop="KDevelop"
fullpathtokdevelop="/usr/bin/kdevelop"

# DBeaver
dbeaver="DBeaver"
rundbeaver="flatpak run io.dbeaver.DBeaverCommunity"

# Eclipse
eclipse="Eclipse IDE"
runeclipse="flatpak run org.eclipse.Java"

# Postman
postman="Postman"
runpostman="flatpak run com.getpostman.Postman"

# Bluefish
bluefish="BlueFish"
fullpathtobluefish="/usr/bin/bluefish"


# Codeblocks
if [ x"$@" = x"$codeblocks" ]; then	
    # The preferred way of doing it in bash
    # https://github.com/davatorium/rofi/blob/next/doc/rofi-script.5.markdown
    coproc ( $fullpathtocodeblocks > /dev/null  2>1 )
    exit 0
fi

# Geany
if [ x"$@" = x"$geany" ]; then	    
    coproc ( $fullpathtogeany > /dev/null  2>1 )
    exit 0
fi

# MySQL Workbench
if [ x"$@" = x"$mysqlworkbench" ]; then	    
    coproc ( $fullpathtomysqlworkbench > /dev/null  2>1 )
    exit 0
fi

# DBeaver
if [ x"$@" = x"$dbeaver" ]; then	    
    coproc ( $rundbeaver > /dev/null  2>1 )
    exit 0
fi

# Eclipse
if [ x"$@" = x"$eclipse" ]; then	    
    coproc ( $runeclipse > /dev/null  2>1 )
    exit 0
fi

# KDevelop
if [ x"$@" = x"$kdevelop" ]; then	    
    coproc ( $fullpathtokdevelop > /dev/null  2>1 )
    exit 0
fi

# Postman
if [ x"$@" = x"$postman" ]; then	    
    coproc ( $runpostman > /dev/null  2>1 )
    exit 0
fi

# Bluefish
if [ x"$@" = x"$bluefish" ]; then	    
    coproc ( $fullpathtobluefish > /dev/null  2>1 )
    exit 0
fi


# Options presented at Rofi
echo $bluefish
echo $codeblocks
echo $dbeaver
echo $eclipse
echo $geany
echo $kdevelop
echo $mysqlworkbench
echo $postman

