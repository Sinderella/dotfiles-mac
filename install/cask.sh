#!/usr/bin/env bash

brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

apps=(
  # commercial
  010-editor
  1password
  base
  boom
  dash
  fantastical
  forklift
  little-snitch
  micro-snitch
  # freemium
  alfred
  evernote
  skitch
  spotify
  # free
  appcleaner
  dropbox
  firefox
  font-inconsolata
  franz
  glimmerblocker
  google-chrome
  hammerspoon
  iterm2
  skype
  slack
  sublime-text3
  thunderbird
  virtualbox
  virtualbox-extension-pack
  vlc
  vox
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/cfg/hammerspoon/" ~/.hammerspoon

