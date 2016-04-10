# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

# Alias text editor to neovim
alias e='nvim'

# Git aliases
alias g='git'
alias gl='git pull'
alias gp='git push'
alias glo='git log'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'

# Specific aliases for OSX
if [ $(uname) = "Darwin" ]
then
  alias ctags="`brew --prefix`/bin/ctags"
fi
