#!/bin/sh
if command -v hub >/dev/null 2>&1; then
    alias git='hub'
fi

alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gd='git diff'
alias gs='git status -sb'
# push/pull
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
# staging
alias ga='git add'
alias gaa='git add -A'
alias gau='git add -u'
# commit
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcs='git commit -S'
alias gcsm='git commit -S -m'
# checkout
alias gco='git checkout'
alias gcob='git checkout -b'
alias gb='git branch -v'
alias gpr='gp && git pr'
alias glnext='git log --oneline $(git describe --tags --abbrev=0 @^)..@'
