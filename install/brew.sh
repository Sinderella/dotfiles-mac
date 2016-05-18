#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/dupes
brew update
brew upgrade

apps=(
  findutils --default-names
  gnu-sed --default-names
  gnu-tar --default-names
  gnu-which --default-names
  gnutls --default-names
  grep --default-names
  # General
  binutils
  cmake
  coreutils
  cowsay
  diffutils
  git
  go
  gzip
  htop
  nvm
  python
  python3
  tmux
  tree
  watch
  wget
  xctool
  # Utility
  aria2
  mas
  neovim/neovim/neovim
  youtube-dl
  # Security
  binwalk
  exiftool
  gdb
  gpg
  john
  keybase
  md5deep
  nikto
  nmap
  openssl
  pngcheck
  wireshark
)

brew install "${apps[@]}"

