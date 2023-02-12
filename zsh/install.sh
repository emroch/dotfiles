# fix folder permissions so OMZ doesn't complain
if command -v compaudit >/dev/null 2>&1; then
    compaudit | xargs chmod g-w,o-w
fi

# install oh-my-zsh
if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; then
    # do this after installing OMZ since OMZ moves the existing config
    if [[ -f ~/.zshrc.pre-oh-my-zsh ]]; then
        echo "source ~/.zshrc.pre-oh-my-zsh" >> ~/.zshrc
    fi
    # load the p10k theme, installed via homebrew
    echo "source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
fi
