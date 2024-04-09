#!/bin/env bash

git add .
git commit -m "$(gum input --width 50 --placeholder "Summary of Changes")" \
					 -m "$(gum write --width 50 --placeholder "Details f Change")"
