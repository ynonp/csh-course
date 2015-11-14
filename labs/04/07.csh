#!/bin/tcsh -f

# write a shell script that takes several file names as inputs, 
# and copies itself to each of the files. 
# don't forget to set execute permissions on the target files.
#

foreach target ($argv)
  cp "$0" "$target"
  chmod +x "$target"
end
