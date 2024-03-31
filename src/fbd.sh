#!/bin/bash

# Customize Console
# set-title FBD
echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

    #Input
    VHS=$(gum input --placeholder " Enter Command")

    # Treat Input
	case $VHS in 
	
		exit)
			exit
			;;
		clear | cls)
			clear
			;;
		puns)
			gum pager ./jokes/puns.txt
			;;
		other)
			gum pager ./jokes/sans.txt
			;;
	*)
		echo -n "Command unknown or not implemented yet."
		;;
	esac	
done
