#!/bin/bash
# Get the current directory
current_dir=$(pwd)
# Get the list of files in the current directory
files=( "$current_dir"/* )
# Initialize the index variable
index=0
# Loop through the list of files
for file in "${files[@]}"; do
  # Print the index and the filename
  echo "$index $file"
  # Increment the index variable
  index=$(( index + 1 ))
done