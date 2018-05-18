alias ls='ls --color=always'
alias ll='ls -l'
alias la='ls -a'

alias host='drill'
alias https='http --default-scheme https'
alias zgit="git --git-dir=$HOME/.config/zsh/.git --work-tree=$HOME"

typeset -U path

if [[ -d $HOME/.local/bin && -z "${path[(r)$HOME/.local/bin]}" ]] ; then
	path=($HOME/.local/bin $path)
fi
