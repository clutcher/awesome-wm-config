#!/bin/bash

# Switch on debian sid repository
sudo tee /etc/apt/sources.list > /dev/null <<EOF
deb http://deb.debian.org/debian/ sid main non-free non-free-firmware contrib
# deb-src http://deb.debian.org/debian/ sid main non-free non-free-firmware contrib
EOF

# Update system
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove

# Prepare for gpg dearmor for custom repositories
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common

sudo mkdir -p /etc/apt/trusted.gpg.d/
