#!/bin/bash

# Install packages for backlight control
sudo apt install \
 acpid acpi-support xbacklight \

systemctl enable acpid

# Add support for intel graphics backlight support (includes support of media buttons)
sudo tee /usr/share/X11/xorg.conf.d/20-intel.conf > /dev/null <<EOF
    Section "Device"
        Identifier  "Intel Graphics" 
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
    EndSection
EOF
