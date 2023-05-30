# (Arg)uements
add=$1
commit_m=$2
# This is going to backfire
# branch="main"

# Check if there is enough Args
if [ $# -ge 2 ]; then
  # If there is more than 3 args then change branch
  if [ $# -eq 3 ]; then
    branch=$3
    git branch -M $branch
  fi
  git add $1
  git commit -m $commit_m
  git push -u origin main

# git pull : Makes everything up to date