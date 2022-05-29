#!/bin/bash

function header {
    source $opnDirPath/header "${OpnDirVersion}" "${heading}"
}

function configs {
    source $opnDirPath/configs
}

function clean-run {
    rm -rf ${temp_dir}
    mkdir ${temp_dir}
}

function main-menu {
    tput cup 7 10
    echo "1. Create User"
    
    tput cup 8 10
    echo "2. Remove User"
    
    tput cup 9 10
    echo "3. Update User"
    
    tput cup 10 10
    echo "4. View User"
    
    # Set bold mode
    tput bold
    tput cup 12 10
    read -p "Enter your choice [1-4] " choice
}

##########################################################################################################

export opnDirPath=`pwd`
export OpnDirVersion="Open Directory V1.0"
heading="M A I N - M E N U"


header
configs
clean-run
main-menu

if [[ $choice == 1 ]] ; then
    shell/createuser

elif [[ $choice == 2 ]] ; then
    shell/removeuser

elif [[ $choice == 3 ]] ; then
    shell/updateuser

elif [[ $choice == 4 ]] ; then
    shell/viewuser  
fi