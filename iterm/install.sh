#!/bin/sh
[ "$(uname -s)" != "Darwin" ] && exit 0
sed "s;/Users/emroch;$HOME;g" \
    "$DOTFILES"/iterm/com.googlecode.iterm2.plist.example >"$DOTFILES"/iterm/com.googlecode.iterm2.plist
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

curl -sL https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash >/dev/null
