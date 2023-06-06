#!/bin/bash

des=$PATH

function cptp {
    local ogf=$1
    local des=$2

    # Use the cp command to copy the file to the des directory
    cp "$ogf" "$des/$(basename "$ogf" .sh)"
}

function main {
	if [ $# -eq 0 ]; then
	  echo "The links"
	else
	  # preferably put 'i' in the cmdline arg
	  
	  b=( tools/* )
	  for i in "${b[@]}"
	  do
	    cptp $i $des
	  done

	fi 
	docs="https://docs.google.com/document/d/1y6hnrlTUuzqfdGC-XWjXSNaBXLxc1fv00BvBaC5o87M/edit"
	github="https://github.com/GobiHobi/linux-config"
	bard="https://bard.google.com/"

	echo $docs
	echo $github
	echo $bard
}

main i
