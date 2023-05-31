#!/bin/bash
# (Arg)uements
add=$1
commit_m=$2
# This is going to backfire
# branch="main"

# Check if there is enough Args
if [ $# -ge 2 ]; then
  git add $1
  git commit -m $commit_m
  # If there is more than 3 args then change branch
  if [ $# -eq 3 ]; then
    branch=$3
    git branch -M $branch
    git push -u origin $branch
  else
    # assuming there is a main; if not run: git branch -M main
    git push -u origin main
  fi
fi
  

# git pull : Makes everything up to date