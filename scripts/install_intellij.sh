#!/bin/bash

sudo cp configs/60-jetbrains.conf /etc/sysctl.d/60-jetbrains.conf
sudo sysctl --system

sudo mkdir -p /opt/idea
sudo curl -L "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" | sudo tar xz -C /opt/idea --strip 1
sudo chown -R "$(id -u):$(id -g)" /opt/idea
sudo ln -sf /opt/idea/bin/idea.sh /usr/local/bin/idea

# sudo mkdir -p /opt/pycharm
# sudo curl -L "https://download.jetbrains.com/product?code=PCP&latest&distribution=linux" | sudo tar xz -C /opt/pycharm --strip 1
# sudo chown -R  $(id -u):$(id -g) /opt/pycharm
# sudo ln -sf /opt/pycharm/bin/pycharm.sh /usr/local/bin/pycharm
