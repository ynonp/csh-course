#!/bin/tcsh -f 

# Write a shell script that print an indented directory
# tree (without using tree, find or ls)

# Solution:
# We'll use a recursive script that traverses all paths
# and prints them indented
#

# prevent tcsh gevald when no match is found
set nonomatch=1

# Initial indent value is taken as command
# line arguments or defaults to 0
if ( $# == 0 ) set argv = (0)

# iterate over all files/dirs in current directory
# empty dirs are ok too because we have nonomatch
foreach path (*)
  # print file names
  if ( -f "$path" ) then
    repeat $1 echo -n " "
    echo $path
  else if ( -d "$path" ) then
  # or cd to a directory
  # and perform the same thing there
    repeat $1 echo -n " "
    echo "${path}/"
    cd $path
    @ indent = $1 + 2
    $0 $indent
    cd ..
  endif
end


