#!/usr/bin/env sh

set -euf pipefail

binDir=$HOME/.local/bin
stuffDir=$HOME/.local/share/thoughts

if [ -d $stuffDir ]; then
    printf "Thoughts is already installed. Delete everything and reinstall? [y/n]: "
    read -r reply
    if [ ! "$reply" = "y" ]; then
        echo "OK, nothing's been installed."
        exit 0
    fi
    torch=true
fi

mkdir -p $stuffDir
cp .head.html $stuffDir
cp .foot.html $stuffDir
touch $stuffDir/.rawthoughts.html
echo '*' > $stuffDir/.gitignore
echo '!thoughts.html' >> $stuffDir/.gitignore
echo '!.gitignore' >> $stuffDir/.gitignore
echo '!.rawthoughts.html' >> $stuffDir/.gitignore


if [ -f $binDir ]; then
    echo "$binDir already exists" 1>&2
    exit 1
fi

cp thoughts $binDir
chmod +x $binDir/thoughts

echo 'Done! Add $HOME/.local/bin to your PATH.'
exit 0
