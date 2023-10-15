#!/bin/bash

# Install xfce4 DE
sudo apt install xfce4-power-manager xfce4-settings xfce4-taskmanager gnome-keyring polkit-gnome

# Install screen locker
sudo apt install xfce4-screensaver

# Notification system
sudo apt install libnotify-bin xfce4-notifyd

# File manager
sudo apt install thunar thunar-archive-plugin  gir1.2-thunarx-3.0 insync-thunar
xdg-mime default thunar.desktop inode/directory application/x-gnome-saved-search

# GUI for hardware connection
sudo apt install network-manager-gnome blueman

# Install terminal
sudo apt install xfce4-terminal

# Install screenshot tool
sudo apt install imagemagick

# Image viewer
sudo apt install nomacs

# Setup theme
sudo apt install orchis-gtk-theme --no-install-recommends
xfconf-query -c xsettings -p /Net/ThemeName -s "Orchis"

# Setup icons
git clone https://github.com/bikass/kora.git /tmp/icons/kora
mkdir -p ~/.local/share/icons
mv /tmp/icons/kora/kora ~/.local/share/icons/kora
mv /tmp/icons/kora/kora-pgrey ~/.local/share/icons/kora-pgrey