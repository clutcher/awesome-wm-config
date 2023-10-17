#!/bin/bash

# Install xfce4 DE
sudo apt install xfce4-power-manager xfce4-settings xfce4-taskmanager gnome-keyring

# Install screen locker
sudo apt install xfce4-screensaver

# Notification system
sudo apt install libnotify-bin xfce4-notifyd

# File manager
sudo apt install thunar thunar-archive-plugin  gir1.2-thunarx-3.0
xdg-mime default thunar.desktop inode/directory application/x-gnome-saved-search

# GUI for hardware connection
sudo apt install network-manager-gnome blueman pavucontrol

# Install terminal
sudo apt install xfce4-terminal

# Install screenshot tool
sudo apt install imagemagick

# Image viewer
sudo apt install nomacs

# Setup theme and icons
sudo apt install yaru-theme-gtk yaru-theme-icon
xfconf-query -c xsettings -p /Net/ThemeName -s "Yaru-sage-dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Yaru-sage-dark"
sudo gtk-update-icon-cache /usr/share/icons/Yaru-sage-dark/