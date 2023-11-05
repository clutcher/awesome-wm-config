#!/bin/bash

# Install login manager
sudo apt install lightdm

# Install awesomewm
sudo apt install awesome awesome-extra picom
#sudo apt purge gnome* gdm3

# Additional tools used by copycats theme
sudo apt install unclutter xsel xfonts-terminus

# Install application runner with themes
sudo apt install rofi fonts-roboto

mkdir -p ~/.local/share/rofi/themes/
curl -o ~/.local/share/rofi/themes/rounded-common.rasi https://raw.githubusercontent.com/newmanls/rofi-themes-collection/master/themes/rounded-common.rasi
curl -o ~/.local/share/rofi/themes/rounded-gray-dark.rasi https://raw.githubusercontent.com/newmanls/rofi-themes-collection/master/themes/rounded-gray-dark.rasi
bash -c 'cat > ~/.local/share/rofi/themes/rounded-gray-dark-centered.rasi' << EOF
@import "rounded-gray-dark.rasi"

window {
    location: north;
    y-offset: 21;
}
EOF

# Use copycats theme with minor customizations
rm -rf ~/.config/awesome
git clone --recursive --depth 1 --single-branch https://github.com/lcpz/awesome-copycats.git ~/.config/awesome
cp rc.lua ~/.config/awesome/rc.lua

# Create directory to store screenshots
mkdir -p ~/screenshots
