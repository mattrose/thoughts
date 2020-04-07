#!/bin/bash

set -eou pipefail

binSpot=~/.local/bin/thought
stuffSpot=~/.local/share/thoughts

if [ -d $stuffSpot ]; then
    echo "$stuffSpot already exists"
    exit 1
fi

mkdir $stuffSpot
cp .head.html $stuffSpot
cp .foot.html $stuffSpot
touch $stuffSpot/.rawthoughts.html

if [ -f $binSpot ]; then
    echo "$binSpot already exists"
    exit 1
fi

cp thought $binSpot
chmod +x $binSpot

echo 'Check to be sure ~/.local/bin is in your PATH, otherwise -- done!'
