#!/bin/sh

# Customize Console
# set-title FBD

echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

    #Input
    VHS=$(gum input > history.txt --placeholder " Enter Command")

    # Logic
    if "$VHS" '==' "list"; then
        echo "exit"
        echo "list"
        echo "rules"
    fi
    if "$VHS" '==' "exit"; then
        exit
    fi
    if "$VHS" '==' "rules"; then
        echo "There is not much rules but :\n
        1. Be silly and trolly
        2. Don't insult or any things like that
        3. Always have a Sans sticker in your desktop wallpaper
        4. Chew gum while using the software
        5. Every Arch user shoulds say that he uses arch BTW"
    fi

done