#!/bin/sh

# Customize Console
PROMPT_COMMAND='echo -en "\033]0; $("FBD") \a"'
now=$(date)
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
			gum pager < puns.txt
			;;
		sans)
			gum pager < sans.txt
			;;
		help)
			echo "clear"
			echo "cls"
			echo "date"
			echo "exit"
			echo "help"
			echo "issue"
			echo "puns"
			echo "rules"
			echo "sans"
			echo "time"
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
		*)
		echo -n "Command unknown or not implemented yet."
		;;
	esac	
done
