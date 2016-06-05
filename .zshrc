setopt auto_cd
setopt auto_pushd
setopt hist_ignore_dups
setopt pushd_ignore_dups
setopt ignore_eof
setopt prompt_subst
setopt list_packed
unsetopt list_types

bindkey -e
bindkey '^U' backward-kill-line

alias ls='ls -G'
alias la='ls -a'
alias ll='ls -al'
alias grep='grep --color'
alias tree='tree -I .git'
alias rmdir='rm -rf'
alias relog='exec $SHELL -l'

alias e='emacsclient -nw -a ""'
alias ekill='emacsclient -e "(kill-emacs)"'

alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g C='`git log --oneline | peco | cut -d" " -f1`'

typeset -U path PATH

export PATH=/usr/local/bin:$PATH
export PROMPT='%F{blue}%c%f ${vcs_info_msg_0_}%F{yellow}❯%f '
export LS_COLORS='di=34:ln=35:so=32:ex=31:bd=46;34:cd=43;34'

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{green}%b%f '
precmd () { vcs_info }

eval "$(rbenv init - --no-rehash)"
