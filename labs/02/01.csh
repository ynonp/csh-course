#!/bin/tcsh -f

# Write a shell script that takes a file name as
# a command line argument and prints the file backwards

# Solution:
# tac prints a file from bottom to top
# $1 is the name of the first command line argument
# Double quotes handles files with spaces in their names

tac "$1"

