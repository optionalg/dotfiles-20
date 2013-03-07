alias hide='chflags hidden'
alias unhide='chflags nohidden'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias httpd="python -m SimpleHTTPServer 8081"

# Debugging SMTP server
# Found here: http://www.vurt.ru/2013/02/python-command-line-oneliners/
alias smtpd="echo 'Starting debug SMTPD on port 25000' && python -m smtpd -n -c DebuggingServer localhost:25000"

# ===========
# Git aliases
# ===========
# alias pull='fact && git pull --rebase'
