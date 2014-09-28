#!/bin/bash

if [ ! -d "results" ]; then
  echo "Initial setup..."
  mkdir results && cd results
  git init
  touch .gitkeep && git add .gitkeep
  git commit -am 'Initial commit'
else
  cd results
fi

t followers > followers.txt
if [ -n "$(git status --porcelain)" ]; then
  git add followers.txt
  git commit -am 'twidiff'
  git diff HEAD~1 HEAD --unified=0
else
  echo "No changes to followers.";
fi
