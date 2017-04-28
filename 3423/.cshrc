setenv OSTYPE `/bin/uname -s`
if ($OSTYPE == "Linux") then
    setenv PATH ~/bin:/usr/local/turnin:${USRLOCAL}:${SYSTEM}:${FACBIN}:/home/maynard/bin:.
endif

if ($?USER == 0 || $?prompt == 0) exit;

set history=100
alias ts 'eval `tset -s \!*`'
alias locate "locate -d /var/lib/mlocate/mlocate.db:/usr/local/mlocate/mlocate.db"
set ignoreeof
set prompt="`hostname`{`whoami`}\!:%c>"
alias cs3423 "cd ~/courses/cs/3423"
set cdpath = ( ~/courses/cs ~)

setenv SUB_cs3423 'section1'
setenv EDITOR /usr/bin/vim

alias ls 'ls -F --color'
alias ^l 'clear; ls'
alias lsd 'ls -lt \!* | egrep "^d"'
alias go 'cd $path_\!*'
alias mark 'set path_\!* = $cwd'
alias marks 'set | grep ^path_ | sed "s/^path_/\t/"'
alias unmark 'unset path_\!*'
alias sp 'echo \!* | aspell -a'
alias tin 'rtin;cat /dev/null > /tmp/.tin_log;rm /tmp/.tin_log'
alias cd 'cd \!*; ls'
alias duedates 'duedates cs3423'
