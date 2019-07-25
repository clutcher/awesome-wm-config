#!/bin/bash

# GNOME settings
cat <<EOT > ~/.config/gtk-3.0/settings.ini
[Settings]
gtk-application-prefer-dark-theme=1
EOT

# Git settings
git config --global user.name "Igor Zarvanskyi"
git config --global user.email "iclutcher@gmail.com"
