#!/usr/local/bin/zsh


# --------------------------------------
# > Changing Directories

setopt AUTO_CD

# --------------------------------------
# > Completion

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

# --------------------------------------
# > Beeps

unsetopt BEEP
unsetopt HIST_BEEP
unsetopt LIST_BEEP

# --------------------------------------
# > Initialisation

unsetopt ALL_EXPORT
unsetopt GLOBAL_RCS

# --------------------------------------
# > Input/Output

setopt ALIASES
setopt CORRECT
setopt CORRECT_ALL
setopt INTERACTIVE_COMMENTS
setopt HASH_CMDS
setopt HASH_DIRS
unsetopt RM_STAR_SILENT

# --------------------------------------
# > Job Control

setopt AUTO_CONTINUE
setopt AUTO_RESUME
setopt BG_NICE
unsetopt HUP
setopt LONG_LIST_JOBS

# --------------------------------------
# > Prompting

setopt TRANSIENT_RPROMPT

# --------------------------------------
# > Shell Emulation

setopt BSD_ECHO

# --------------------------------------
# > Divers

#unsetopt CLOBBER

export HISTORY=1000
export SAVEHIST=10
export HISTFILE=$HOME/.zsh/history

setopt append_history

setopt inc_append_history
unsetopt hist_ignore_dups
unsetopt hist_ignore_all_dups
unsetopt hist_expire_dups_first



# EOF
