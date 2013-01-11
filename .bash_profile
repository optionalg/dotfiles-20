# My own stuff
export CLICOLOR=1

#alias ls="gnuls --color"
#eval `gdircolors`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"



# ================
# Load sourceables
# ================

for fn in `find ~/.dotfiles/sourceables -not -type d`; do
    # If DEBUG environment variable is set
    if [ -n "${DEBUG+x}" ]; then
        echo "Loaded $fn"
    fi
    . $fn
done

