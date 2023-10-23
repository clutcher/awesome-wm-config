#!/bin/bash

# Install cli packages for comfort work
sudo apt install mc jq zip curl wget \
    git git-lfs imagemagick openvpn \
    net-tools \
    fonts-noto-core fonts-noto-color-emoji

sudo fc-cache -fv

# Install libraries
sudo apt install libglib2.0-bin

# Install drivers
sudo apt install firmware-linux

# Hardware support
sudo apt install network-manager bluez pipewire-audio alsa-utils

# Setup udev rules
sudo cp -rf configs/udev/* /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger

# Enable os prober to add Windows into grub
sudo sed -i 's/#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub
sudo update-grub