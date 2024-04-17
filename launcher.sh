#!/bin/bash

chmod +x *.sh

# Main choice function
function choice () {
	MAI=$(gum input --placeholder "[S]cripts, [F]BD")
	
	if [ "$MAI" = "F" ]; then
		./src/fbd.sh
	fi
	if [ "$MAI" = "S" ]; then
		SCH=$(gum input --placeholder "[S]witch, [D]ownloader")

		if [ "$SCH" = "S" ]; then
			./src/scripts/switch.sh
		fi
		if [ "$SCH" = "D" ]; then
			./src/scripts/downloader.sh
		fi
		else
			gum log --level error "Command not found or not implemented yet."
		fi
	if [ "$MAI" != "F" ] || [ "$MAI" != "S" ]; then
		gum log --level error "Command not found or not implemented yet."
	fi
}

choice
