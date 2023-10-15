#!/bin/bash

sudo apt remove docker docker-engine docker.io containerd runc

sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common

sudo mkdir -p /etc/apt/trusted.gpg.d/
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bookworm stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

# Add permission for current user
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

# Disable docker service on startup. Would be enabled manually only when needed.
sudo systemctl disable docker.service
sudo systemctl disable containerd.service
