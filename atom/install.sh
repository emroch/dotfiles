#!/bin/sh
apm install --packages-file package-list.txt
apm update --no-confirm

ln -sf "$DOTFILES"/atom/_config.cson ~/.atom/config.cson
ln -sf "$DOTFILES"/atom/_init.coffee ~/.atom/init.coffee
ln -sf "$DOTFILES"/atom/_keymap.cson ~/.atom/keymap.cson
ln -sf "$DOTFILES"/atom/_snippets.cson ~/.atom/snippets.cson
ln -sf "$DOTFILES"/atom/_styles.less ~/.atom/styles.less
