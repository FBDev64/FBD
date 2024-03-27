#!/bin/sh

# Customize Console
# set-title FBD
echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

    #Input
    VHS=$(gum input > ./config/history.txt --placeholder " Enter Command")

    # Treat Inpuit
    if [ "$VHS" '==' "list" ]; then
        echo "exit"
        echo "list"
        echo "rules"
    fi
    if [ "$VHS" '==' "exit" ]; then
        exit
    fi
    if [ "$VHS" '==' "rules" ]; then
        echo "There is not much rules but :\n
        1. Be silly and trolly
        2. Don't insult or any things like that
        3. Always have a Sans sticker in your desktop wallpaper
        4. Chew gum while using the software
        5. Every Arch user shoulds ay "I use Arch, BTW" every day on the chat.\n"
    fi
    if [ "$VHS" '==' "cls" ]; then
        clear
    fi
    if [ "$VHS" '==' "issue" ]; then
        echo "Go to github.com/fbdev64/FBD/issues and report it."
    fi
    if [ "$VHS" '==' "sans" ]; then
        gum pager ./jokes/sans.txt
    fi
    if [ "$VHS" '==' "puns" ]; then
        ggu pager ./jokes/puns.txt
    fi
    if [ "$VHS" '==' "time" ]; then
        echo $date
    fi
