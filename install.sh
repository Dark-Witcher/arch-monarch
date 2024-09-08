#!/bin/bash

#Get the script directory
SCRIPT_DIR=$(dirname "$0")

#Copy the folder witht he theme
sudo cp -r $SCRIPT_DIR/arch-monarch /usr/share/plymouth/themes/

#Apply the theme
sudo plymouth-set-default-theme -R arch-monarch
