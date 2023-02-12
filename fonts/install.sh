#!/bin/sh
install() {
    curl -L -s -o "$1/SourceCodePro-Light.ttf" \
        https://github.com/adobe-fonts/source-code-pro/raw/release/TTF/SourceCodePro-Light.ttf
}

if [ "$(uname -s)" = "Darwin" ]; then
    if command -v brew >/dev/null 2>&1; then
        brew tap homebrew/cask-fonts
        brew install font-source-code-pro
        brew install font-fontawesome
        brew install font-meslo-lg-nerd-font
    else
        install ~/Library/Fonts
    fi
else
    mkdir -p ~/.fonts
    install ~/.fonts
fi
