#!/bin/tcsh -f
# Write a safedel script. 
# The script takes a file name as command line input, 
# and moves that file to a ~/TRASH directory instead of deleting it.

# Upon invocation, script should check ~/TRASH for files 
# older than 48 hours and delete them (hint: use find).
# 

# Solution:
# The problem here happens when trying to safedel
# a file by its full path, for example
# ./safedel /my/file.txt
#
# Because we don't want to move the entire directory.
# We'll use basename to get just the file name

set trash = ~/TRASH

mkdir -p "$trash"

find "$trash" -mtime +2 -exec rm {} \;
  
set fname = `basename "$1"`
mv "$1" "$trash/$fname"

