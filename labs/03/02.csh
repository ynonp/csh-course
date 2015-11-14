#!/bin/tcsh -f

# Write a shell script that takes an input argument 
# and tells if it's a string or a number (Hint: try expr a + 0)

# Solution: 
# The command expr a + 0 will fail if a is not a number or
# a is zero

expr $1 + 0 >&/dev/null

if ( $? == 0 || $1 == 0 ) then
  echo "$1 is a number"
else
  echo "$1 is a string"
endif

