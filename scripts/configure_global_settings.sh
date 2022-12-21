#!/bin/bash

# GNOME settings
cat <<EOT > ~/.config/gtk-3.0/settings.ini
[Settings]
gtk-application-prefer-dark-theme=1
EOT

# System folders settings
cat <<EOT > ~/.config/user-dirs.dirs
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_DOCUMENTS_DIR="$HOME/projects"
XDG_PICTURES_DIR="$HOME/screenshots"
EOT

# Git settings
git config --global user.name "Igor Zarvanskyi"
git config --global user.email "iclutcher@gmail.com"
