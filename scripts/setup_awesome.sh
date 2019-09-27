#!/bin/bash

# Install awesome and login manager
sudo apt install awesome awesome-extra lightdm slock
# sudo apt purge gnome* gdm3

# Install minimal packages for comport work
sudo apt install \
 libglib2.0-bin apt-transport-https \
 mc imagemagick curl zip \
 git openvpn \
 pavucontrol network-manager blueman gnome-terminal nautilus \
 gthumb

# Use copycats theme with minor customizations
rm -rf ~/.config/awesome
git clone --recursive --depth 1 --single-branch https://github.com/lcpz/awesome-copycats.git ~/.config/awesome
cp rc.lua ~/.config/awesome/rc.lua

# Create directory to store screenshots
mkdir -p ~/screenshots

# Fix xkb keyboard bug to forcly use US language when using hotkeys
xkbcomp $DISPLAY - | egrep -v 'group . = AltGr;' | xkbcomp - $DISPLAY

# Fix Java bugs with floating IDEA (https://superuser.com/questions/999486/prevent-my-ide-to-become-floating-in-awesome-wm)
IRONIC_WM_NAME="Sawfish"
NET_WIN=$(xprop -root _NET_SUPPORTING_WM_CHECK | awk -F "# " '{print $2}')

if [[ "$NET_WIN" == 0x* ]]; then
    # xprop cannot reliably set UTF8_STRING, so we replace as string.
    # fortunately, jdk is OK with this, but wm-spec says use UTF8_STRING.
    xprop -id "$NET_WIN" -remove _NET_WM_NAME
    xprop -id "$NET_WIN" -f _NET_WM_NAME 8s -set _NET_WM_NAME "$IRONIC_WM_NAME"
else
    # even if we're not net compatible, do java workaround
    xprop -root -remove _NET_WM_NAME
    xprop -root -f _NET_WM_NAME 8s -set _NET_WM_NAME "$IRONIC_WM_NAME"
fi
