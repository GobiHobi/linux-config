#!/bin/bash
# Use case
# ./x.sh $(./iget.sh 0)

# Check if there are any command line arguments
if [ $# -eq 0 ]; then
  # No command line arguments were given, so ask for one
  echo "Please enter a command line argument:"
  read pp
else
  # pipeline parameter
  pp=$1
fi

# regex expression that checks if a string - or whatever type - is numbers, weird
re='^[0-9]+$'
if [[ $pp =~ $re ]] ; then
  #  Get the current directory
  current_dir=$(pwd)
  # Get the list of file paths in the directory it was ran on
  files=( "$current_dir"/* )
  # Get the file path through index position
  file=${files[$pp]}
  # Return filename path
  echo $file
  # error, if $pp isn't an integer
  else
    echo "Error, please input an integer"
    exit
fi