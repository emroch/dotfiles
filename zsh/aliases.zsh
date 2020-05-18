#!/bin/sh
alias reload!='exec "$SHELL" -l'

if command -v htop >/dev/null 2>&1; then
    alias top='htop'
fi
if command -v ripgrep >/dev/null 2>&1; then
    alias grep='ripgrep'
fi
