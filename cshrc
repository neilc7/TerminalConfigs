#echo "sourcing ~/.cshrc"

set autolist

alias vi '/usr/bin/vim'
alias g 'gvim -p'
alias b 'cd ..'
alias scsh 'source ~/.cshrc'
alias gcsh 'gvim ~/.cshrc'
alias la 'ls -al --color=auto'
alias lt 'ls -ltr'
alias grepsv "egrep --color --include='*.sv*'"
alias grep "grep --color=auto"

alias mk 'make | tee make.lg'

bindkey -k up history-search-backward
bindkey -k down history-search-forward

set green="%{\033[0;32m%}"
set yellow="%{\033[1;33m%}"
set end="%{\033[0m%}"
set prompt="\n${green}%/\n%m  %T >>${end} "
unset green yellow end


