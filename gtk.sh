#!/bin/bash
#Install gnome zenburn theming

cp -r gtk ~/.themes

gconftool-2 --type=string --set /desktop/gnome/interface/gtk_theme "zenburn"
gsettings set org.gnome.desktop.interface gtk-theme "zenburn"

gsettings set org.gnome.desktop.wm.preferences theme "zenburn"
gconftool-2 --type=string --set /apps/metacity/general/theme "zenburn"
gsettings set org.gnome.shell.extensions.user-theme name "zenburn"

#sudo aptitude install volti imagemagick