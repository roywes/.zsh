# History {{{

# History file location. Conforms to XDG dirs specification
HISTFILE=~/.cache/zsh/histfile

# Maximum number of entries in history file
HISTSIZE=100000

# Number of history entries before history file is cleaned up
SAVEHIST=10000

# }}}

# Setting {{{

setopt appendhistory

# If command is unknown, and is a valid directory path, then change directory
setopt autocd 

# When changing directory, add old path to directory stack, enabling popd
setopt autopushd
setopt extendedglob
setopt nomatch
setopt notify
setopt prompt_subst

# Disable beeps
unsetopt beep

# Use VIM key bindings
bindkey -v

bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

# }}}

# Completion {{{

zstyle :compinstall filename '/home/roy/.zshrc'

autoload -Uz compinit

compinit -d ~/.cache/zsh/compdump

# }}}

# Prompt {{{

source $HOME/.config/zsh/git-prompt.sh

PROMPT_NEWLINE=$'\n'

PROMPT='${PROMPT_NEWLINE}%B%F{magenta}%n%F{white} at %F{yellow}%m%F{white} in %F{green}%~%f%b $(__posh_git_echo) ${PROMPT_NEWLINE}%B%F{white}$%f%b '

# }}}
