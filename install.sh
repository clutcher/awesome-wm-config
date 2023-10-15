#!/bin/bash

sudo apt update

# Minimal install and hardware configuration
source scripts/setup_debian_repository.sh
source scripts/setup_hardware_and_cli.sh
source scripts/configure_backlight.sh
## source scripts/configure_touchpad.sh

source scripts/configure_global_settings.sh

# Desktop environment setup and configuration
source scripts/setup_awesome.sh
source scripts/setup_xfce_de.sh
source scripts/install_chrome.sh

cp -rf dotfiles/* ~/.config/
cp -f configs/bash/.bash_aliases ~/

# Dev tools
source scripts/install_java.sh
source scripts/install_nodejs.sh

source scripts/install_intellij.sh

source scripts/install_docker.sh

# Knowledge base
source scripts/install_obsidian.sh
source scripts/install_insync.sh
