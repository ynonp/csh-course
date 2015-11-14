#!/bin/tcsh -f

# Write a shell script that reads a name from the user - 
# if that name is an executable program run it, 
# otherwise print its content. 
# If it's not a file print an error message.
#

# Solution:
# 1. Use -f to check if the argument is a file
# 2. Use -x to check if file is executable
# 3. Use -X to check if we have an executable shell program
#
# File names that don't have a / are relative paths
# to the same directory. To run them, we explicitly
# add ./ to their prefix because . is not always in
# path

if ( $# == 0 ) then
  echo "Usage: $0 <path>"
  exit 1
endif

if ( -x "$1" ) then
  if ( "$1" =~ */* ) then
    "$1"
  else
    "./$1"
  endif
else if ( -X "$1" ) then
  "$1"
else if ( -f "$1" ) then
  cat "$1"
endif


