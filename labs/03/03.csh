#!/bin/tcsh -f

# Write a shell script that takes 3 input arguments and 
# prints the largest one

# Solution:
# Hey we're in shell- no need for fancy if/else
# because we can use normal shell commands
# 
# In this case split to lines, sort numerically 
# and take the first output line
#

echo $* | tr ' ' '\n' | sort -nr | head -1


