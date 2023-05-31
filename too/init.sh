#!/bin/bash
if [ $# -eq 0 ]; then
  echo "The links"
else
  # preferably put 'i' in the cmdline arg
  git init
fi 
docs="https://docs.google.com/document/d/1y6hnrlTUuzqfdGC-XWjXSNaBXLxc1fv00BvBaC5o87M/edit"
github="https://github.com/GobiHobi/linux-config"
bard="https://bard.google.com/"

echo $docs
echo $github
echo $bard

source aliases.sh