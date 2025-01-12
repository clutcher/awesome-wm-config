#!/bin/bash

wget -q "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xaeeb94e9c5a3b54ecfa4a66aa684470caccaf35c" -O- | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/insync.gpg
sudo add-apt-repository "deb [arch=amd64] http://apt.insync.io/debian bookworm non-free contrib"

sudo apt update
sudo apt install insync