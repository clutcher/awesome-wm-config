#!/bin/bash

# Install packages for backlight control
sudo apt install acpid acpi-support brightnessctl

systemctl enable acpid