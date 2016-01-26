#!/bin/bash
#Set environment

sudo apt-get install aptitude
sudo aptitude install gnome-terminal volti imagemagick
sudo aptitude install git mercurial
sudo aptitude install libglib2.0-bin
sudo aptitude install dconf-editor

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

######## Gnome terminal settings ##########


######## Sublime install ########
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update && sudo apt-get install sublime-text-installer
echo "################"
echo "Please edit /etc/apt/sources.list.d/ to get it work properly"

cp -r sublime-text-3 ~/.config

######## Fix xkb keyboard bug #########
xkbcomp $DISPLAY - | egrep -v 'group . = AltGr;' | xkbcomp - $DISPLAY

######## Fix Java bugs ##########
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


