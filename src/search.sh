#!/bin/bash
search_dir=$(gum input --placeholder "Search Dir")
search_term=$(gum input --placeholder "Search Term")
grep -r "$search_term" "$search_dir"
