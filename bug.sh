#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# The find command finds all files and directories under the specified path.

find . -print0 | while IFS= read -r -d $'
0' file; do
  # This part is problematic.  It assumes that all inputs will be files and attempts to process them.
  # If a directory is passed in this will cause an error.
  echo "Processing: $file"
  # Some processing here.... potentially causing an error if $file is a directory
  # This would result in an error if a directory was passed in.
  wc -l < "$file"
done