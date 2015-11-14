#!/bin/tcsh -f

# Write a shell script called "wait_for_user" that takes 
# a user name and checks if the user is logged in. 
# If she's not logged in, the script sleeps for 5 seconds 
# and checks again in a loop - until the user logs in.
#

alias check 'who | grep "$1" >& /dev/null'

while (! { (check) > /dev/null })
  echo "Waiting for $1"
  sleep 5
end 
  
 echo "$1 is here"

