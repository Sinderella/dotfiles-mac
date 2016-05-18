#!/usr/bin/env bash

# Git
git config --global credential.helper osxkeychain; # activate git credentials storage
git config --global push.default simple; # default Git push behavior is set to `simple`

# Disable sound on boot
sudo nvram SystemAudioVolume=" "
