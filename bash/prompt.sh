#!/bin/bash

# Configure the prompt prefix to show the current user, host, path, and
# git status (if in a git repository).  When logged in via SSH, the host
# portion of the prompt will appear as a different color than when logged
# in locally to more easily distinguish terminal sessions.

function get_prefix() {
    local C_RESET='\[\033[0m\]'
    local C_USER='\[\033[1;34m\]'   # bright (bold) blue
    local C_HOST='\[\033[0;32m\]'   # green
    local C_PATH='\[\033[0;33m\]'   # yellow
    local C_GIT='\[\033[1;31m\]'    # bright (bold) red

    # if connected via SSH, change the host color to purple
    if [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
        local C_HOST='\[\033[35m\]'
    fi

    echo "${C_USER}\u${C_RESET}@${C_HOST}\h:${C_PATH}\w${C_RESET}"
}

function get_venv() {
    if [[ ! -z "$VIRTUAL_ENV" ]]; then
        echo "(`basename \"$VIRTUAL_ENV\"`) "
    fi
}

prefix=$(get_prefix)

if [[ -r "${DOTFILES}/bash/git-prompt.bash" ]]; then
    source "${DOTFILES}/bash/git-prompt.bash"
    export PROMPT_COMMAND='__git_ps1 "$(get_venv)${prefix}" "\\\$ " " \[\033[1;31m\](%s)\[\033[0m\]"'
else
    # venv prefix is taken care of by venv/bin/activate script,
    # as long as PROMPT_COMMAND does not overwrite PS1
    export PS1="${prefix}\$ "
fi
# export PROMPT_COMMAND=set_prompt
export PROMPT_DIRTRIM=2         # shorten long paths, keeping 2 levels at the end
