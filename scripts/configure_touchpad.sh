#!/bin/bash

# Enable click on tap
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo touch /etc/X11/xorg.conf.d/40-libinput.conf
sudo bash -c 'cat >  /etc/X11/xorg.conf.d/40-libinput.conf' << EOF
Section  "InputClass"
    Identifier  "touchpad overrides"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
EndSection
EOF

# Settings are applied after reboot or x restart
# systemctl restart lightdm