#!/bin/tcsh -f

set fifo = "filemaker"
mkfifo $fifo

onintr END

while (1)
    set line="`cat $fifo`"
    set words=($line)
    touch "$words[1]"
end

END:
    rm $fifo
