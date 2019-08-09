# Setup terminal, and turn on colors
export TERM=screen-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='nvim'
export PYTHONPATH=/usr/local/lib/python2.6/site-packages

# Locales/Collations
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_COLLATE=C # CTAGS Sorting in VIM/Emacs is better behaved with this in place

if [ `uname` = "Darwin" ]; then
  # GitHub token with no scope, used to get around API limits
  export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.gh_api_token)
fi

# Android SDK
export ANDROID_HOME=$HOME/androidsdk

# Shift time between normal mode and insert mode in VI-Mode
export KEYTIMEOUT=1

# Currently this path is appendend to dynamically when picking a ruby version
export PATH=node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.cabal/bin:~/.local/bin:$PATH
export PATH=$PATH:/opt/boxen/homebrew/opt/go/libexec/bin
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
