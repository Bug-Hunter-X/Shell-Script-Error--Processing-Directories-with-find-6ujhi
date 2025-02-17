# Shell Script Bug: find command and directory handling

This repository demonstrates a common error in shell scripting when using the `find` command to process files.  The script incorrectly handles directories, leading to errors.

## Bug Description
The script uses `find` to locate files and then processes them.  However, it fails to distinguish between files and directories.  When a directory is encountered, the subsequent commands (such as `wc -l`) produce errors.

## Bug Solution
The solution involves adding a check to determine if the item found is a file using the `-f` test.