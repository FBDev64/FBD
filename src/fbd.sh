#!/bin/sh

# Customize Console
# set-title FBD

echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

		#Input
		PRT=$(gum input > history.txt --placeholder " Enter Command")

		# Logic
		if PRT=="list"; then
			echo "exit"
			echo "list"
			echo "rules"
		fi
		if PRT=="exit"; then
			exit
		fi
		if PRT=="rules"; then
			echo "There is not much rules but :\n
			1. Be silly and trolly
			2. Don't insult or any things like that
			3. Always have a Sans sticker in your desktop wallpaper
			4. Chew gum while using the software
			5. Every Arch user shoulds ay "I use Arch, BTW" every day on the chat.\n"
		fi

	done