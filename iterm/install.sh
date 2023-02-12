#!/bin/sh
[ "$(uname -s)" != "Darwin" ] && exit 0

echo "  › Set Options"
defaults write com.googlecode.iterm2 "QuitWhenAllWindowsClosed" -bool true
defaults write com.googlecode.iterm2 "EnableAPIServer" -bool true
defaults write com.googlecode.iterm2 "CopySelection" -bool false
defaults write com.googlecode.iterm2 "StatusBarPosition" -int 1
defaults write com.googlecode.iterm2 "HideMenuBarInFullscreen" -bool false
defaults write com.googlecode.iterm2 "HideScrollbar" -bool true
defaults write com.googlecode.iterm2 "EnableDivisionView" -bool false
defaults write com.googlecode.iterm2 "StretchTabsToFillBar" -bool false
defaults write com.googlecode.iterm2 "ShowPaneTitles" -bool false
defaults write com.googlecode.iterm2 "PerPaneBackgroundImage" -bool false
defaults write com.googlecode.iterm2 "SplitPaneDimmingAmount" -float 0.42
defaults write com.googlecode.iterm2 "DimOnlyText" -bool true
defaults write com.googlecode.iterm2 "SwitchPaneModifier" -int 5
defaults write com.googlecode.iterm2 "PreventEscapeSequenceFromClearingHistory" -bool true
defaults write com.googlecode.iterm2 "DisallowCopyEmptyString" -bool true
defaults write com.googlecode.iterm2 "DisableMetalWhenIdle" -bool true
defaults write com.googlecode.iterm2 "PinchToChangeFontSizeDisabled" -bool true
defaults write com.googlecode.iterm2 "AlternateMouseScroll" -bool true

echo "  › NOTE: Profiles and Keybindings are not configured... import settings manually"

echo "  › Install shell integration"
curl -sL https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash >/dev/null
