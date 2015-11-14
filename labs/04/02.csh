#!/bin/tcsh -f

# Write a shell script that takes input as command 
# line arguments and prints them out backwards 
# (first argument printed last). 
#

@ i=$#

while ( $i > 0 )
  echo $argv[$i]
  @ i--
end

