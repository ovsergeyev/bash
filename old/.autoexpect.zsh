#!/usr/bin/expect -f
set timeout -1
spawn zsh
expect "*--- "
send -- "0"
expect eof
