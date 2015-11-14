#!/bin/tcsh -f

# Write a shell script that reads a file name 
# from the user, prints its contents and the 
# number of lines in the file.
#

echo "Please type in a file name"
set name = "$<"

# Print number of lines
echo "File has" `wc -l < "$name"` "lines"

# leave a blank line
echo

# Print contents
cat "$name"



