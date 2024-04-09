#!/bin/env sh

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
		puns | under)
			gum pager < ./src/under.txt
			;;
   		nintendo)
     			gum pager < ./src/nintendo.txt
			;;
		help)
			gum pager < ./src/cmd.txt
			;;
		edit | text | txt | file | editor | nano | vim | vi)
			$EDITOR $(gum file $FBD)
			;;
		issue)
			gum log --level info "Report issue at github.com/FBD/issues"
			;;
		rules)
			gum pager < ./src/rules.txt
			;;
		time | date)
			gum log --level info "$now"
			;;
   		duck | goose)
     			gum pager < ./src/duck.txt
			;;
   		annoy | dog)
     			gum pager < ./src/dog.txt
			;;

		*)
		echo -n "$(gum log --level error 'Command not found not implemented yet.')"
		;;
	esac
done
