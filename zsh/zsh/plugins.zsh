if [ `uname` = "Darwin" ]; then
  echo "Warning! There is no zsh plugins configuration for Macos. Review ~/.zsh/plugins.zsh in order to add some"
else
  source "/usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"
fi
