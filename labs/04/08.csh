#!/bin/tcsh -f 

if ( $# == 0 ) then
  echo 0
else
  @ last = $# - 1
  @ res = $1 + `./$0 $argv[2-]`
  echo $res
endif

