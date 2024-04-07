#!/bin/env bash

gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert"
gum input --placeholder "scope"
gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change"
gum write --placeholder "Details of this change"
gum confirm "Commit changes?" && git add . && git commit -m "$SUMMARY" -m "$DESCRIPTION"
gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
