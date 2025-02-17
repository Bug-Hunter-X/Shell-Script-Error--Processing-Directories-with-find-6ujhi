#!/bin/bash

# This improved script correctly handles files and directories.
find . -print0 | while IFS= read -r -d $'
0' file; do
  # Check if it's a regular file
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    wc -l < "$file"
  else
    echo "Skipping directory: $file"
  fi
done