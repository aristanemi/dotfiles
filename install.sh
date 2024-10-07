#!/usr/bin/env bash
source ./fileslist
mkdir -p $PWD/system
for file in ${FILES[@]}; do
    new_file="$HOME/${file}"
    ln -s "$PWD/system/$file" "$new_file"
done

# Create a directory for the ssh config file
mkdir -p ~/.ssh
ln -s $PWD/ssh_config ~/.ssh/config