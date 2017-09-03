# Use ag instead of the default find command for listing candidates.
# - The first argument to the function is the base path to start traversal
# - Note that ag only lists files not directories
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  ag -g "" "$1"
}

fzf-file-preview() {
  local cmd="${FZF_ALT_C_COMMAND:-"command find -L . \\( -path '*/\\.*' -o -fstype 'dev' -o -fstype 'proc' \\) -prune \
    -o -type f -print 2> /dev/null | sed 1d | cut -b3-"}"
  setopt localoptions noglobsubst pipefail 2> /dev/null
  # cd "${$(eval "$cmd | $(__fzfcmd) --preview='head -$LINES {} | ccat -Calways'"):-.}"
 # eval "$cmd | fzf --preview='head -$LINES {} | ccat -Calways'" | while read item; do
 #   echo -n "${(q)item} "
 # done
  echo -n "${$(eval "$cmd | fzf --preview='head -$LINES {} | ccat -Calways'")}"
  local ret=$?
  zle redisplay
  typeset -f zle-line-init >/dev/null && zle zle-line-init
  return $ret
}

zle     -N   fzf-file-preview
bindkey '^J' fzf-file-preview

fzf-git-select-files() {
  git status -s | fzf -m --border --header="HINT: (Un)Select files to commit with TAB. Move with CTRL+(j|k)" --preview="git --no-pager diff --color=always {2}" | cut -b '4-'
}
