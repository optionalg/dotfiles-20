#!/bin/bash

function error {
    echo -e $'\e[00;31m' $1 $'\e[0m'
}

function abort {
    error "$1"; exit 1;
}

SOURCE=~/.dotfiles
TARGET=~/

# Make sure paths have a slash at the end
[[ $SOURCE != */ ]] && SOURCE="$SOURCE"/
[[ $TARGET != */ ]] && TARGET="$TARGET"/

cd $TARGET ||
    abort "Target directory does not exist."

cd $SOURCE ||
    abort "Source directory does not exist."

# Find
FILES=$(find `pwd` -depth 1 -name ".*" -not -iname ".git")
for file in $FILES; do
    target_file="$TARGET$(basename $file)"

    # Make sure we don't overwrite anything
    [[ -e $target_file && ! -s $target_file ]] &&
        abort "$target_file exists and is not a symlink"

    [[ -s $target_file ]] && rm $target_file

    echo "Symlinking $file to $target_file"
    ln -s $file $target_file
done



#
# Install phpsh if not yet installed
#

echo ""
PHPSH_SOURCE="${SOURCE}vendor/phpsh/"
PHPSH_TARGET="${SOURCE}installed/phpsh/"
if [[ -e "$PHPSH_TARGET" ]]; then
    echo "phpsh is already installed in $PHPSH_TARGET. Skipping..."
else
    echo "About to install phpsh into $PHPSH_TARGET"
    CMD="cd $PHPSH_SOURCE && python setup.py install --prefix=${PHPSH_TARGET}"
    eval "$CMD"
fi
