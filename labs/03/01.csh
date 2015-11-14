#!/bin/tcsh -f

# Write a shell script that asks the user for a number, 
# if the user chooses 7 - print "You Win".

echo "Pick a number"
set num = "$<"

if ( "$num" == 7 ) then
  echo "You Win"
endif

