alias hide='chflags hidden'
alias unhide='chflags nohidden'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias httpd="python -m SimpleHTTPServer 8081"

# ===========
# Git aliases
# ===========
# alias pull='fact && git pull --rebase'
