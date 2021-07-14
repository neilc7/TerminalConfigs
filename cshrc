#echo "sourcing ~/.cshrc"

set autolist


bindkey -k up history-search-backward
bindkey -k down history-search-forward

set green="%{\033[0;32m%}"
set yellow="%{\033[1;33m%}"
set end="%{\033[0m%}"
set prompt="\n${green}%/\n%m  %T >>${end} "
unset green yellow end


