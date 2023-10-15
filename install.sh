#!/bin/bash

sudo apt update

source scripts/setup_hardware_and_cli.sh
source scripts/setup_awesome.sh
source scripts/setup_xfce_de.sh
source scripts/configure_global_settings.sh
source scripts/configure_backlight.sh
## source scripts/configure_touchpad.sh

source scripts/install_chrome.sh

source scripts/install_intellij.sh

source scripts/install_java.sh
source scripts/install_nodejs.sh

# ADD install for obsidian
source scripts/install_docker.sh
source scripts/install_insync.sh

# Copy and replace dotfiles
cp -rf dotfiles/* ~/.config/