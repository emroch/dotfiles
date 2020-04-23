#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
    alias ls="ls -FG"
    alias f="open -a Finder"                # open Finder to directory
    alias pv="open -a Preview"              # open file in Preview
    alias ql='qlmanage -p 2>/dev/null'      # show file in QuickLook
else
    alias ls="ls -F --color"
    # alias ls="ls -pG"
fi

alias l="ls -lAh"
alias la="ls -A"
alias ll="ls -l"

alias cp="cp -aiv"          # preserve attributes, copy recursively, prompt on overwrite
alias mv="mv -iv"           # prompt on overwrite
alias mkdir="mkdir -pv"     # make parent directories

alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -R"  # output raw color codes, but not other escape sequences

if [ -n "$(command -v htop)" ]; then
    alias top="htop"
fi

alias cdr='cd "$(git rev-parse --show-toplevel)"'

# quick hack to make watch work with aliases
alias watch='watch -c -d -t '

# open, pbcopy and pbpaste on linux
if [ "$(uname -s)" != "Darwin" ]; then
    if [ -z "$(command -v pbcopy)" ]; then
        if [ -n "$(command -v xclip)" ]; then
            alias pbcopy="xclip -selection clipboard"
            alias pbpaste="xclip -selection clipboard -o"
        elif [ -n "$(command -v xsel)" ]; then
            alias pbcopy="xsel --clipboard --input"
            alias pbpaste="xsel --clipboard --output"
        fi
    fi
    if [ -e /usr/bin/xdg-open ]; then
        alias open="xdg-open"
    fi
fi
