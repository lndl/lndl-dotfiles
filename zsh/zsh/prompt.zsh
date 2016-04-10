function git_prompt_info {
  local ref=$(=git symbolic-ref HEAD 2> /dev/null)
  local gitst="$(=git status 2> /dev/null)"

  # Icons
  local stagedicon="\ue710"
  local branchicon="\ue725"
  local mergeicon="\ue726"
  local cleanicon="\uf087"

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus="%{$fg[red]%}$mergeicon %{$reset_color%}"
    else
      gitstatus="%{$fg[green]%}$mergeicon %{$reset_color%}"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus="%{$fg[green]%}$stagedicon %{$reset_color%}"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus="%{$fg[red]%}$stagedicon %{$reset_color%}"
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus="%{$fg[blue]%}$stagedicon %{$reset_color%}"
  else
    gitstatus="%{$fg[green]%}$cleanicon %{$reset_color%}"
  fi

  if [[ -n $ref ]]; then
    echo "[%{$fg[yellow]%}$branchicon%{$reset_color%} ${ref#refs/heads/}|$gitstatus] "
  fi
}

PROMPT='%~%<< $(git_prompt_info)${PR_BOLD_WHITE}>%{${reset_color}%} '
