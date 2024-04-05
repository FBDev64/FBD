#!/bin/sh

# Customize Console
PROMPT_COMMAND='echo -en "\033]0;$(FBD|cut -d "/" -f 4-100)\a"'
now=$(date)
echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

    #Input
    VHS=$(gum input --placeholder " Enter Command")

    # Treat Input
	case $VHS in 
	
		exit | q | esc | bye)
			exit
			;;
		clear | cls)
			clear
			;;
		puns)
			gum pager < under.txt
			;;
   		nintendo)
     			gum pager < nintendo.txt
			;;
		help)
			echo "CLEAR - Clear screen"
			echo "CLS - Clear Screen"
			echo "DATE - Display current Date and Time"
			echo "EXIT - Exits software"
			echo "HELP - Display this help"
			echo "ISSUE - Link to report an issue or a feature"
			echo "PUNS - Display Undertale puns"
			echo "RULES - Display rules"
			echo "NINTENDO - Display Nintendo Jokes"
			;;
		issue)
			echo "Report issue at github.com/FBD/issues"
			;;
		rules)
			echo "3 rules : 1. do NOT insult and NO NSFW. 2. BE a troll 3. Arch users should use the command arch on every startup."
			;;	
		time | date)
			echo "$now"
			;;
   		duck | goose)
     			echo "$(duck.txt )"
			;;
   		annoy | dog)
     			echo "$(dog.txt )"
			;;
		*)
		echo -n "Command unknown or not implemented yet."
		;;
	esac	
done
