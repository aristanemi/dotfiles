#!/usr/bin/env bash
source ./fileslist
mkdir -p system
for file in ${FILES[@]}; do
    from_file="$HOME/${file}"
    cp  $from_file "$PWD/system/$file"
done

# Create a directory for the ssh config file
mkdir -p $PWD/system/.ssh
cp ~/.ssh/config $PWD/system/.ssh/config