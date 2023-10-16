#!/bin/bash

# System folders settings
cat <<EOT > ~/.config/user-dirs.dirs
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_DOCUMENTS_DIR="$HOME/projects"
XDG_PICTURES_DIR="$HOME/screenshots"
EOT

# Generate new ssh keys
ssh-keygen -t rsa -C "iclutcher@gmail.com" -f ~/.ssh/id_rsa -q -N ""

# Git settings
git config --global user.name "Igor Zarvanskyi"
git config --global user.email "iclutcher@gmail.com"
git config credential.helper 'cache --timeout=3600'
