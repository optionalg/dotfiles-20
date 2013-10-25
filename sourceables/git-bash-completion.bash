# Git Bash Completion
GIT_COMPLETION_PATH="/usr/local/etc/bash_completion.d/git-completion.bash"
if [ -f "$GIT_COMPLETION_PATH" ]; then
    . "$GIT_COMPLETION_PATH"
else
    echo "Could not load git completion from '$GIT_COMPLETION_PATH'"
fi
