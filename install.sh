#!/bin/bash

function header {
    source $opnDirPath/header "${OpnDirVersion}" "${heading}"
}

function configs {
    source $opnDirPath/configs
}

function main-menu {
    tput cup 7 10
    echo "1. Create Management User"
    
    tput cup 8 10
    echo "2. Remove Management User"
    
    tput cup 9 10
    echo "3. Update Management User"
    
    # Set bold mode
    tput bold
    tput cup 11 10
    read -p "Enter your choice [1-3] " choice
}

##########################################################################################################

export opnDirPath=`pwd`
export OpnDirVersion="Open Directory V1.0"
heading="I N S T A L L A T I O N"


header
configs
main-menu

if [[ $choice == 1 ]] ; then
    shell/createmanagementuser

elif [[ $choice == 2 ]] ; then
    shell/removemanagementuser

elif [[ $choice == 3 ]] ; then
    shell/createmanagementuser
fi