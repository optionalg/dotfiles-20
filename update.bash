#!/bin/bash

function error {
    echo -e $'\e[00;31m' $1 $'\e[0m'
}

function abort {
    error "$1"; exit 1;
}

SOURCE=~/.dotfiles
TARGET=~/test

# Make sure paths have a slash at the end
[[ $SOURCE != */ ]] && SOURCE="$SOURCE"/
[[ $TARGET != */ ]] && TARGET="$TARGET"/

cd $TARGET ||
    abort "Target directory does not exist."

cd $SOURCE ||
    abort "Source directory does not exist."

# Find
FILES=$(find `pwd` -depth 1 -name ".*")
for file in $FILES; do
    target_file="$TARGET$(basename $file)"

    # Make sure we don't overwrite anything
    [[ -e $target_file && ! -s $target_file ]] &&
        abort "$target_file exists and is not a symlink"

    [[ -s $target_file ]] && rm $target_file

    echo "Symlinking $file to $target_file"
    ln -s $file $target_file
done

