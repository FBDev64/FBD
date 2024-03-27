#!/bin/sh

# Customize Console
# set-title FBD
echo "Undertale Jokes, that's all. Mainly. You know, as ya want."

while true
  do 

    #Input
    VHS=$(gum input --placeholder " Enter Command")

    # Treat Inpuit
    if "$VHS" == "list"; then
        echo "exit"
        echo "list"
        echo "rules"
        echo "cls"
        echo "puns"
        echo "sans"
        echo "issue"
    fi
    if "$VHS" == "exit"; then
        exit
    fi
    if "$VHS" == "rules"; then
        gum pager ./rules.txt
    fi
    if "$VHS" == "cls"; then
        clear
    fi
    if "$VHS" == "issue"; then
        echo "Go to github.com/fbdev64/FBD/issues and report it."
    fi
    if "$VHS" == "sans"; then
        gum pager ./jokes/sans.txt
    fi
    if "$VHS" == "puns"; then
        ggu pager ./jokes/puns.txt
    fi
    if "$VHS" == "time"; then
        echo $date
    fi
done
