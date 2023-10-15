#!/bin/bash

# Install latest obsidian
VER=$(curl --silent -qI https://github.com/obsidianmd/obsidian-releases/releases/latest | awk -F '/' '/^location/ {print  substr($NF, 1, length($NF)-1)}'); \
wget https://github.com/obsidianmd/obsidian-releases/releases/download/$VER/obsidian_${VER#v}_amd64.deb -O /tmp/obsidian.deb

sudo dpkg -i /tmp/obsidian.deb

# Clone PKM
mkdir -p ~/insync/knowledge
git clone https://github.com/clutcher/knowledge.git ~/insync/knowledge/