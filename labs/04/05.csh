#!/bin/tcsh

# Write a shell script that reads a file and 
# prints out only the longest line
#

set maxlen = 0
foreach line ("`cat $1`")
  if ( ${%line} > $maxlen ) then
    set max = "$line"
    set maxlen = ${%line}
  endif
end

echo $max

