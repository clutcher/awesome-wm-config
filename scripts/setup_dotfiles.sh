cp -rf dotfiles/* ~/.config/

# Inject bash configuration on terminal open
cat <<EOT >> ~/.bashrc


# Source all .bash_* files from the folder
if [ -d "$HOME/.config/bash" ] && [ "$(ls -A $HOME/.config/bash)" ]; then
    for file in "$HOME/.config/bash/.bash_"*; do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
fi
EOT
