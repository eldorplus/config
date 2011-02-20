#!/usr/local/bin/zsh


zmodload zsh/complist &>/dev/null
autoload -Uz compinit
compinit
#zstyle :compinstall filename '${HOME}/.zshrc'
#zstyle ':completion:*:default'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always



setopt ALWAYS_LAST_PROMPT
#setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_MENU
setopt AUTO_REMOVE_SLASH
setopt AUTO_PARAM_SLASH
setopt COMPLETE_ALIASES
setopt COMPLETE_IN_WORD
setopt HASH_LIST_ALL
unsetopt LIST_AMBIGUOUS
setopt LIST_TYPES
setopt GLOB_DOTS	#Completion sur les fichiers caches
setopt MENU_COMPLETE


# EOF
