function git_prompt_info {
  local ref=$(=git symbolic-ref HEAD 2> /dev/null)
  local gitst=$(=git status 2> /dev/null)

  local stagedicon="⇡"
  local branchicon=""
  local mergeicon="§"
  local cleanicon="✓"
  local detachedicon="…"

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus="%{$fg[red]%}$mergeicon%{$reset_color%}"
    else
      gitstatus="%{$fg[green]%}$mergeicon%{$reset_color%}"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus="%{$fg[green]%}$stagedicon%{$reset_color%}"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus="%{$fg[red]%}$stagedicon%{$reset_color%}"
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus="%{$fg[blue]%}$stagedicon%{$reset_color%}"
  else
    gitstatus="%{$fg[green]%}$cleanicon%{$reset_color%}"
  fi

  if [[ -n $ref ]]; then
    echo "[%{$fg[yellow]%}$branchicon%{$reset_color%}%{$fg[blue]%}${ref#refs/heads/}%{$reset_color%}|$gitstatus]"
  elif [[ ${gitst} =~ "detached" ]]; then
    local detachedcommit=$(=echo "$gitst" | head -n1 | sed -n -E 's/^.*at (.*)$/\1/p')
    echo "[%{$fg[yellow]%}$detachedicon %{$reset_color%}$detachedcommit|$gitstatus]"
  fi
}

PROMPT=',\(%~%<< $(git_prompt_info))${PR_BOLD_WHITE} =%{${reset_color}%} '
