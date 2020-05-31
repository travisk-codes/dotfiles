function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo 'λ'
}

PROMPT='
%{$fg_bold[red]%}%m%{$reset_color%}%F{008} as %{$fg_bold[magenta]%}%n%{$reset_color%}%F{008} in %{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info)%{$reset_color%}%F{008} at %{$fg_bold[yellow]%}%D{%H%M}%{$reset_color%}
$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%F{008} on %{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
