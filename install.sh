#!/usr/bin/env bash

for file in $(ls -A system); do
    new_file="$HOME/.${file}"
    ln -s "$PWD/system/$file" "$new_file"
done