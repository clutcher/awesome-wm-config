#!/bin/bash

sudo mkdir -p /opt/idea
sudo curl -L "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" | sudo tar xz -C /opt/idea --strip 1
sudo ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea
