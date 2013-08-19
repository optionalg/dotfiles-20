alias hide='chflags hidden'
alias unhide='chflags nohidden'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias httpd="python -m SimpleHTTPServer 8081"

alias gwd="GIT_PAGER='' git diff --word-diff"
alias gau="git update-index --assume-unchanged"
alias gnau="git update-index --no-assume-unchanged"


# Debugging SMTP server
# Found here: http://www.vurt.ru/2013/02/python-command-line-oneliners/
alias smtpd="echo 'Starting debug SMTPD on port 25000' && python -m smtpd -n -c DebuggingServer localhost:25000"

# ===========
# Git aliases
# ===========
# alias pull='fact && git pull --rebase'
