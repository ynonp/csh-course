#!/bin/tcsh

# Write a shell script that reads a file and 
# prints its content with no blank lines. 
#

# Note: Quoting in csh is weird. Adding \
# or double quotes or single quotes around
# the $ breaks the code

foreach line ("`cat $1 | grep -v ^$ `")
  echo "$line"
end

