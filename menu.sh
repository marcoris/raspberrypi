#!/bin/bash

while true
    do
    PS3='Please enter your choice: '
    options=("Install LAMP" "Set IP" "Quit")
    select opt in "${options[@]}" 
    do
        case $opt in
            "Install LAMP")
                reset
                echo "Installing lamp..."
                bash ./lamp/install.sh
                break
                ;;
            "Set IP")
                reset
                echo "Setting ip address..."
                bash ./ip/setip.sh
                break
                ;;
            "Quit")
                reset
                echo "Good bye..."                 
                exit
                ;;
            *) echo invalid option;;
        esac
    done
done