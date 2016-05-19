#!/usr/bin/env sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/dupes
brew update
brew upgrade

apps=(
  findutils --with-default-names
  gnu-sed --with-default-names
  gnu-tar --with-default-names
  gnu-which --with-default-names
  gnutls --with-default-names
  grep --with-default-names
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

# Link app
brew linkapps python # link IDLE from python2, change to python3 if preferred

