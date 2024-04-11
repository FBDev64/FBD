#!/bin/bash
chmod 777 ./src/fbd.sh
sudo pacman -S gum
gum log --level info "Setup Finished. Before running FBD, test your gum installation. Then, execute the command : ./src/fbd.sh" 
