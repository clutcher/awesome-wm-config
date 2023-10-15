#!/bin/bash

sudo cp configs/sysctl/60-jetbrains.conf /etc/sysctl.d/60-jetbrains.conf
sudo sysctl --system

sudo mkdir -p /opt/idea
sudo curl -L "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" | sudo tar xz -C /opt/idea --strip 1
sudo chown -R "$(id -u):$(id -g)" /opt/idea
sudo ln -sf /opt/idea/bin/idea.sh /usr/local/bin/idea

# sudo mkdir -p /opt/pycharm
# sudo curl -L "https://download.jetbrains.com/product?code=PCP&latest&distribution=linux" | sudo tar xz -C /opt/pycharm --strip 1
# sudo chown -R  $(id -u):$(id -g) /opt/pycharm
# sudo ln -sf /opt/pycharm/bin/pycharm.sh /usr/local/bin/pycharm

# Required for AppImage, which is used by toolbox
#sudo apt install libfuse2
#
#tb_releases_url='https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
#download_url=$(curl --silent $tb_releases_url | jq --raw-output '.TBA[0].downloads.linux.link')
#curl --output ~/Downloads/jetbrains-toolbox.tgz --progress-bar --location $download_url