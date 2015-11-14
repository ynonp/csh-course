#!/bin/tcsh -f

# Write a shell script that reads a file and prints its 
# content double-spaced (adding a blank line after each line)
#

# Solution:
# We can iterate over each line in file
# using a foreach loop and the cat utility
#
# Quoting the string in echo is required to
# prevent wildcard expansion of the contents

foreach line ("`cat $1`")
  echo "$line"
  echo
end

