#!/bin/env bash

# Customize Console
now=$(date)
echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do

    #Input
	VHS=$(gum input --placeholder " Enter Command")
    
	function puns () {
    		gum pager < ./src/under.txt
     	} function nintendo () {
     		gum pager < ./src/nintendo.txt
     	} function help () {
     		gum pager < ./doc.md
     	} function edit () {
     		$EDITOR "$(gum file "$FBD")"
     	} function issue () {
     		gum log --level info "Report issue at github.com/FBD/issues"
     	} function date () {
     		gum log --level info "$now"
     	}
	case $VHS in

		exit | q | esc | bye)
			exit
			;;
		clear | cls)
			clear
			;;
		puns | under)
			puns
			;;
   		nintendo)
     			nintendo
			;;
		help)
			help
			;;
		edit | text | txt | file | editor | nano | vim | vi)
			edit
			;;
		issue)
			issue
			;;
		time | date)
			date
			;;
   		duck | goose)
     			gum pager < ./src/duck.txt
			;;
   		annoy | dog)
     			gum pager < ./src/dog.txt
			;;

		*)
			echo -n "Command not found or not implemented yet."
			;;
	esac
done
