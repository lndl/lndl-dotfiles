# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -Fh'

# Same as above, but in long listing format
alias ll='ls -Fhl'

# Alias text editor to neovim
alias e='nvim'
alias vim='nvim'

# Weather
alias wh='curl wttr.in/La_Plata'

# Git aliases
alias g='git'
alias gl='git pull'
alias gp='git push'
alias gb='git branch'
alias glo='git log'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gm='git merge'
alias gfa='git fetch -a'
alias gmnf='git merge --no-ff'
alias cdgr='cd $(git rev-parse --show-toplevel)'
alias glt='git describe --abbrev=0 --tags'

alias gf='fzf-git-select-files'
alias gaf='git add $(gf)'

# Bundler aliases
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# Rails (with Bundler)
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rdb='bundle exec rails db'

# Where is listening a process?
alias whlis='lsof -nP -itcp -sTCP:LISTEN | grep'

# Specific aliases for OSX
if [ $(uname) = "Darwin" ]
then
  alias ctags="`brew --prefix`/bin/ctags"
fi

# Specific aliases for GNU/Linux
if [ $(uname) = "Linux" ]
then
  alias open="xdg-open"
fi

# Docker compose
alias dkc='docker-compose'
alias dkcu='docker-compose up'
alias dkcd='docker-compose down'
alias dkce='docker-compose exec'
alias dkcr='docker-compose run'
