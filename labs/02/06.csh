#!/bin/tcsh -f

# Print a list of all the file extensions in the current folder, 
# showing each extension only once
#

set files = (*.*)
set -f ext = ($files:ge)

echo $ext
 
