#!/bin/bash

sudo apt update

source scripts/setup_awesome.sh
source scripts/configure_global_settings.sh
source scripts/configure_backlight.sh
# source scripts/configure_touchpad.sh

source scripts/install_mysql.sh

#source scripts/install_vscode.sh
source scripts/install_sublime.sh
source scripts/install_intellij.sh

source scripts/install_java.sh
source scripts/install_nodejs.sh

source scripts/install_docker.sh