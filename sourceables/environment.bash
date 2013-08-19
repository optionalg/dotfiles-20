MAMP="/Applications/MAMP/Library/bin"
DOTFILES="~/.dotfiles/.bin"
NPM="/usr/local/share/npm/bin"
BREW="/usr/local/bin"
GO="/Users/lucas/_dev/_go/bin"
PYENV="$HOME/.pyenv/bin"


PATH="$PYENV:$BREW:$PATH:$MAMP:$DOTFILES:$NPM:$GO"
export PATH

EDITOR="vim"
export EDITOR

PHPSH_LIB_PATH=~/.dotfiles/installed/phpsh/lib/python2.7/site-packages
HOMEBREW_PYTHON=$(brew --prefix)/lib/python2.7/site-packages
PYTHONPATH="${PHPSH_LIB_PATH}:$HOMEBREW_PYTHON:$PYTHONPATH"
export PYTHONPATH

export DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql/5.6.10/lib:$DYLD_LIBRARY_PATH"

# Fix those pesky perl warnings on remote servers, which is caused
# by us sending weird locale settings
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GOPATH="/Users/lucas/_dev/_go"
