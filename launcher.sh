#!/bin/bash

# CHMOD All files (.sh)
find . -type f -iname "*.sh" -exec chmod +x {} \;

# Main choice function
function choice () {
	MAI=$(gum input --placeholder "[S]cripts, [F]BD, [Q]uit")
	
	if [ "$MAI" = "F" ]; then
		./src/fbd.sh
	fi
	if [ "$MAI" = "S" ]; then
		SCH=$(gum input --placeholder "[S]witch, [D]ownloader")
	fi
		if [ "$SCH" = "S" ]; then
			./src/scripts/switch.sh
		fi
		if [ "$SCH" = "D" ]; then
			./src/scripts/downloader.sh
		fi
	if [ "$MAI" = "Q" ]; then
		exit
	fi
}

choice
