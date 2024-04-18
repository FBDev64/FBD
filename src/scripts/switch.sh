#!/bin/env bash

NAM=$(gum input --placeholder "Enter service name")

# If/Else choice

function choice () {
	CHO=$(gum input --placeholder "Choose : [E]nable or [D]isable")

	if [ "$CHO" = "E" ]; then
  	sudo enable $NAM
	fi
	if [ "$CHO" = "D" ]; then
  	sudo disable $NAM
	fi
}

choice
