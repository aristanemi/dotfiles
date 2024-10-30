#!/usr/bin/env bash

readonly SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
readonly ABSOLUTE_DIR_PATH=$(dirname "$SCRIPT_PATH")

source ./fileslist
mkdir -p system
for file in ${FILES[@]}; do
    from_file="$HOME/${file}"
    cp  $from_file "$PWD/system/$file"
done

# Create a directory for the ssh config file
mkdir -p $PWD/system/.ssh
cp ~/.ssh/config $PWD/system/.ssh/config

# Copy git hooks from gcu-bkr
mkdir -p git-hooks/gcu-bkr
readonly GCU_BKR_HOOKS_DIR="$HOME/bind-vol/gcu-bkr/.git/hooks"
cp -a $GCU_BKR_HOOKS_DIR $ABSOLUTE_DIR_PATH/git-hooks/gcu-bkr/