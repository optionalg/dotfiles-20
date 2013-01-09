parse_git_branch() {
    git branch 2> /dev/null | ansifilter | sed -e '/^[^*]/d' -e 's/*\(.*\) \([^)]*\)$/(\2) /'
}

export PS1="\[$(tput bold)\]\[$(tput setaf 46)\]ƒ \[$(tput setaf 27)\](\w) \[$(tput setaf 226)\]\$(parse_git_branch)\[$(tput setaf 255)\]\$ \[$(tput sgr0)\]";
