#!/bin/tcsh

# Write a shell script that reads a file name from the user, 
# checks that the file is valid, and lowecases its name. 
# For example, running lc MyFile should rename the file MyFile to myfile.
# 

# Solution:
# We can use tr to lowercase a file name

echo "Type in a file name"
set fname = "$<"

if ( ! -f "$fname" ) then
  echo "Invalid file name"
  exit 1
endif

# Only lowercase if name contains one or more 
# capital letters
if ( "$fname" =~ *[A-Z]* ) then
  set newname = `echo "$fname" | tr A-Z a-z`
  mv "$fname" "$newname"
endif


