#!/bin/tcsh -f

# Write a shell script that takes two file 
# names as commnad line arguments, and replaces their contents.

# Solution:
# We'll use a third temporary file name to replace
# the files
# $$ is the decimal process number of the shell. Each
# new instance of the script gets its own value, which
# makes it a good name for a temporary file

# Don't forget to quote

set tmp = "/tmp/$$"

mv "$1" "$tmp"
mv "$2" "$1"
mv "$tmp" "$2"


