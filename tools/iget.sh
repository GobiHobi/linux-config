# This gets all the files in a current directory
# files=( * )


#!/bin/bash

# Check if there are any command line arguments
if [ $# -eq 0 ]; then
  
  # No command line arguments were given, so ask for one
  echo "Please enter a command line argument:"
  read $pp

else
  # pipeline parameter
  pp=$1
  
fi

# regex expression that checks if a string - or whatever type - is numbers, weird
re='^[0-9]+$'

if [[ $pp =~ $re ]] ; then

  #  Get the current directory
  current_dir=$(pwd)
  
  # Get the list of files in the current directory
  files=( "$current_dir"/* )

  file=${files[$pp]}

  if [[ $pp -le 0 ]] && [[ $pp -ge ${#array[@]} ]]; then
  
    return $file
    
  else
  
    echo "Error, not a valid index position"
    
    exit
    
  fi

  # error, if $pp isn't an integer
  else

    echo "Please input an integer"

    exit
    
fi