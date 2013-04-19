MAMP="/Applications/MAMP/Library/bin"
DOTFILES="~/.dotfiles/.bin"
NPM="/usr/local/share/npm/bin"
BREW="/usr/local/bin"

PATH="$BREW:$PATH:$MAMP:$DOTFILES:$NPM"
export PATH

EDITOR="vim"
export EDITOR

PHPSH_LIB_PATH=~/.dotfiles/installed/phpsh/lib/python2.7/site-packages
PYTHONPATH="${PHPSH_LIB_PATH}:$PYTHONPATH"
export PYTHONPATH

# Fix those pesky perl warnings on remote servers, which is caused
# by us sending weird locale settings
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

