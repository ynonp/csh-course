#!/bin/tcsh -f

mkfifo stop

onintr END

find / -name '*.sh' >&/dev/null &
set pid = $!

while(1)
   set line = "`cat stop`"
   if ( "$line" == "exit" ) break
end

kill -9 $pid

END:    
    rm stop
