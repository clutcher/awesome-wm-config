#!/bin/bash


# !!! Refactor on docker


# @ToDo: define latest apt config instead of hardcoded 0.8.13-1
curl -OL https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config*
sudo apt update
rm mysql-apt-config*

sudo apt install mysql-server

# Add timezone change for mysql server config? 
