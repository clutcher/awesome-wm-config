#!/bin/bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

echo "deb http://apt.insync.io/ubuntu kinetic non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
sudo apt update
sudo apt install insync