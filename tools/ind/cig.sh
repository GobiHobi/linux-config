#!/bin/bash

# Define the flags
flags=(
  -h "Example: cig <index displayed from ls or cil> -eq <path>"
  -p "Print the full path of the file"
)

# Parse the flags
while getopts "hvp:" opt; do
  case "$opt" in
    h)
      echo "Help information"
      exit 0
      ;;
    p)
      PRINT_PATH=1
      ;;
    v)
      VERBOSE=1
      ;;
    *)
      echo "Unknown option: $opt"
      exit 1
      ;;
  esac
done


# Check if the first argument is a flag; Thank you bard
if [[ $1 =~ ^- ]]; then
  # Ignore the flag
  shift
fi
# Get the index position
index=$1

# Check if the `-p` flag is set
if [[ $PRINT_PATH == 1 ]]; then
  # Get the current directory
  current_dir=$(pwd)
  # Get the list of file paths in the directory it was ran on
  files=( * )
  # Get the file path through index position
  file=${files[$index]}
  # Return filename path
  echo "$current_dir/$file"
else
  # regex expression that checks if a string - or whatever type - is numbers, weird
  re='^[0-9]+$'
  if [[ $index =~ $re ]] ; then
    # Get the current directory
    current_dir=$(pwd)
    # Get the list of file paths in the directory it was ran on
    files=( * )
    # Get the file path through index position
    file=${files[$index]}
    # Return filename path
    echo "$file"
    # error, if $pp isn't an integer
  else
    echo "Error, please input an integer"
    exit
  fi
fi
