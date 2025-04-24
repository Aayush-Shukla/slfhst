#!/bin/bash

# Variables
REPO_DIR="/media/whome/compose"
COMMIT_MESSAGE="Backup: $(date '+%Y-%m-%d %H:%M:%S')"



cd "$REPO_DIR" || exit

# Check if there are changes
if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push origin main
else
  echo "No changes to commit."
fi
