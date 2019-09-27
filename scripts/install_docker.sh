#!/bin/bash

sudo apt remove docker docker-engine docker.io containerd runc

sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

# Add permission for current user
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock