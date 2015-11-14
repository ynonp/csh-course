#!/bin/tcsh -f

# Write a shell script that takes two file names, 
# and prints the contents of the larger one.
# 

# Solution:
# Hey we're in shell, so no need for clumsy ifs

if ( $# != 2 ) then
  echo "Usage: $0 <file1> <file2>"
  exit 1
endif

set larger = "`ls -S "$1" "$2" | head -1`"
cat $larger

