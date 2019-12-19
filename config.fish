# In case of macOS,
# assume GNU coreutils are installed
# and use those binaries instead of BSD ones
if [ (uname) = "Darwin" ]
    alias ls       'gls --color=auto'
    alias readlink 'greadlink'
    alias head     'ghead'
end
alias ll  'ls -oh --time-style=+%Y-%m-%d'
alias llh 'ls -alh'
alias sl  'ls'
alias l   'ls -CF'

alias py  'python3'
alias ipy 'ipython3 --pylab'
alias les 'less -R'
alias del 'trash'

alias wdiff 'git diff --no-index --word-diff=color'

alias apc 'apt-cache'
alias š   'git status'
alias gs  'git status'

# Open- and copy-related aliases
switch (uname)
    case "Linux"
        alias xclip 'xclip -selection clipboard'
        alias copy  'xclip'
        alias open  'xdg-open'
    case "*"
        alias copy 'pbcopy'
        alias hd   'hexdump -C'
end

alias k 'kubectl'

# fish version of `function c() { cd "$@" && l; }`
function c
  # `cd` is a fish function around the fish builtin
  cd $argv; and l
end


function d -d "Run stdout of command to /dev/null"
    eval "$argv > /dev/null";
end

function e -d "Run stderr of command to /dev/null"
    eval "$argv 2>/dev/null";
end

function de -d "Run both stdout and stderr of command to /dev/null"
    eval "$argv 2>&1 > /dev/null";
end


function gitwatch -d "Run git command through `watch`; if no command is given, defaults to `git status`"

    if not test $argv
        set argv "status"
    end
    command watch -n1 --color "git -c color.status=always $argv"
end

function llwatch -d "Run `ll` command through `watch`"

    watch -n1 --color 'ls -toh --time-style=+%d/%m/%Y --color=always'
end

function wh -d "Like `which`, but dereference links"
    set LOCATION (which $argv)
    if [ "$LOCATION" != "" ]
        readlink -f (which $argv)
    end
end


function lowercase
    echo $argv | tr [:upper:] [:lower:]
end

function uppercase
    echo $argv | tr [:lower:] [:upper:]
end
