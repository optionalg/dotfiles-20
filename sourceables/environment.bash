MAMP="/Applications/MAMP/Library/bin"
DOTFILES="~/.dotfiles/.bin"
NPM="/usr/local/share/npm/bin"

PATH="$PATH:$MAMP:$DOTFILES:$NPM"
export PATH

EDITOR="vim"
export EDITOR

PHPSH_LIB_PATH=~/.dotfiles/installed/phpsh/lib/python2.7/site-packages
PYTHONPATH="${PHPSH_LIB_PATH}:$PYTHONPATH"
export PYTHONPATH

