#!/bin/tcsh -f

# Write a shell script that takes a two file extensions as 
# input (call them ext1 and ext2), 
# and renames all files ending with ext1 to end with ext2.
#

#!/bin/tcsh -f

set noop=0

foreach opt (`getopt n $argv`)
  switch ($opt)
    case -n:
      set noop=1
      shift
      breaksw
  endsw
end

set ext1 = "$1"
set ext2 = "$2"

foreach filename (*.$ext1)
  # Using eval + variable modifier allows replacing
  # variable content dynamically
  set newname = `eval 'echo $filename:s'"/${ext1}/${ext2}/"`
  if ( $noop ) then
    echo "mv" "$filename" "$newname"
  else
    mv "$filename" "$newname"
  endif
end

