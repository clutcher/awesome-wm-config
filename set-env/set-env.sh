#!/bin/bash
#Set environment

sudo apt-get install aptitude
sudo aptitude install sakura volti imagemagick
sudo aptitude install git mercurial
sudo aptitude install libglib2.0-bin

cp -r gtk ~/.themes

########### GNOME settings #############
#gtk2
gconftool-2 --type=string --set /desktop/gnome/interface/gtk_theme "zenburn"
#metacity
gconftool-2 --type=string --set /apps/metacity/general/theme "zenburn"

#gtk3
#gsettings set org.gnome.desktop.interface gtk-theme "zenburn"
#gsettings set org.gnome.desktop.wm.preferences theme "zenburn"

cat <<EOT > ~/.config/gtk-3.0/settings.ini
[Settings]
gtk-application-prefer-dark-theme=1
EOT

######## Sakura term settings ##########
cp -r sakura ~/.config


######## Sublime install ########
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update && sudo apt-get install sublime-text-installer
echo "################"
echo "Please edit /etc/apt/sources.list.d/ to get it work properly"

cp -r sublime-text-3 ~/.config
