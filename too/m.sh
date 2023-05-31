#!/bin/bash

# searches for file with a certain string and if there isn't any then append that string to the top of the file
for file in *; do
  if ! grep -q '^#!/bin/bash' "$file"; then
    sed -i '1i#!/bin/bash' "$file"
  fi
done