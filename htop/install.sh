#!/bin/sh
cp -f "$DOTFILES"/htop/htoprc.example "$DOTFILES"/htop/htoprc
ln -sf "$DOTFILES"/htop/htoprc ~/.config/htop/htoprc
