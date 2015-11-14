#!/bin/tcsh -f

# Write a shell script that takes a Windows file 
# (lines end with \r\n) and converts it to a 
# Unix file (lines end with \n).

# Solution:
# We'll use tr to delete the \r: tr -d \r

set tmp="/tmp/$$"

cat "$1" | tr -d \\r > "$tmp"
mv "$tmp" "$1"


