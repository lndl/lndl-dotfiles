# Setup terminal, and turn on colors
export TERM=screen-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='nvim'

# Locales/Collations
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_COLLATE=C # CTAGS Sorting in VIM/Emacs is better behaved with this in place

# Android SDK
export ANDROID_HOME=$HOME/androidsdk

# Shift time between normal mode and insert mode in VI-Mode
export KEYTIMEOUT=1

# Currently this path is appendend to dynamically when picking a ruby version
export PATH=~/.cargo/bin:node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.cabal/bin:~/.local/bin:$PATH
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
