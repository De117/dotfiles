alias ll  'ls -oh --time-style=+%d/%m/%Y'
alias llh 'ls -alh'
alias sl  'ls'
alias l   'ls -CF'

alias py  'python3'
alias ipy 'ipython3 --pylab'
alias les 'less -R'
alias del 'trash'
alias b   'bash'

# fish version of `function c() { cd "$@" && l; }`
function c
  builtin cd $argv; and l
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
