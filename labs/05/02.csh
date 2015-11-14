#!/bin/tcsh -f

# Write a script that searches for text inside files.
#

set count=1
set files = ()

set remaining = (`getopt ptc $argv`)
foreach opt (`getopt ptc $argv`)
  switch ($opt)
    case -p:
      set files = ($files[*]:q "*.pl")
      @ count++
      breaksw

    case -t:
      set files = ($files[*]:q "*.txt")
      @ count++
      breaksw

    case -c:
      set files = ($files[*]:q "*.c" "*.cpp" "*.h")
      @ count++
      breaksw

  endsw
end

repeat $count shift remaining

grep -l $remaining $files


