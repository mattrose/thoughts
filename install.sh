#!/usr/bin/env sh

set -euf pipefail

binDir=$HOME/.local/bin
stuffDir=$HOME/.local/share/thoughts

if [ -d "$stuffDir" ]; then
    printf "Thoughts is already installed. Reinstall? [y/n]: "
    read -r reply
    if [ ! "$reply" = "y" ]; then
        echo "OK, nothing's been installed."
        exit 0
    fi
fi

mkdir -p "$stuffDir"
cp .head.html "$stuffDir"
cp .foot.html "$stuffDir"
touch "$stuffDir"/.rawthoughts.html
echo '*' > "$stuffDir"/.gitignore
echo '!thoughts.html' >> "$stuffDir"/.gitignore
echo '!.gitignore' >> "$stuffDir"/.gitignore
echo '!.rawthoughts.html' >> "$stuffDir"/.gitignore

mkdir -p "$binDir"
cp thoughts "$binDir"
chmod +x "$binDir"/thoughts

echo 'Done! Add $HOME/.local/bin to your PATH, and create a git repo: https://github.com/marenbeam/thoughts#first-install'
