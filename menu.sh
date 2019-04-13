#!/bin/bash

press_enter()
{
    echo -en "\n Press Enter to continue"
    read
    clear
}
selection=
until [ "$selection" = "0" ]; 
do
    echo "
    Program Menu
    1- Display free disk space
    2- Display free memory

    0- exit program
    "
    echo -n "Enter Selection: "
    read selection
    echo ""
    case $selection in
        1 ) sudo df ; press_enter
        ;;
        2 ) free ; press_enter
        ;;
        0 ) exit 
        ;;
        *) echo "please Enter 1, 2, or 0 " ; press_enter
        ;;
    esac
done