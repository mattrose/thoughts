#!/bin/bash

set -eou pipefail

read -p "This install script is a bit funky if you're using ~thoughts~ on two machines. Be sure and check the README first. Press ENTER to continue"

binSpot=~/.local/bin/thoughts
stuffSpot=~/.local/share/thoughts

if [ -d $stuffSpot ]; then
    echo "$stuffSpot already exists" 1>&2
    exit 1
fi

mkdir $stuffSpot
cp .head.html $stuffSpot
cp .foot.html $stuffSpot
touch $stuffSpot/.rawthoughts.html
echo '*' > $stuffSpot/.gitignore
echo '!thoughts.html' >> $stuffSpot/.gitignore
echo '!.gitignore' >> $stuffSpot/.gitignore
echo '!.rawthoughts.html' >> $stuffSpot/.gitignore


if [ -f $binSpot ]; then
    echo "$binSpot already exists" 1>&2
    exit 1
fi

cp thoughts $binSpot
chmod +x $binSpot

echo 'Check to be sure ~/.local/bin is in your PATH, otherwise -- all good!'
