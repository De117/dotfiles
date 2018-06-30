alias ll='ls -oh --time-style=+%d/%m/%Y'
alias llh='ls -alh'
alias sl='ls'
alias l='ls -CF'

alias py='python3'
alias ipy='ipython3'
alias les='less -R'
alias del='trash'

alias wdiff='git diff --no-index --word-diff=color'

function c() { cd "$@" && l; }
function cl() { cd "$@" && ll; }

function d() { eval "$@ > /dev/null"; }              # "Run stdout of command to /dev/null"
function e() { eval "$@ 2>/dev/null"; }              # "Run stderr of command to /dev/null"
function de() { eval "$@ 2>/dev/null 1>/dev/null"; } # "Run both stdout and stderr of command to /dev/null"
