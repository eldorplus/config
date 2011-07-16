#!/usr/local/bin/zsh

alias mv='nocorrect mv'				# no spelling correction on mv (zsh FAQ 3.4)
alias cp='nocorrect cp'				# no spelling correction on cp (zsh FAQ 3.4)
alias mkdir='nocorrect mkdir'			# no spelling correction on mkdir (zsh FAQ 3.4)

alias v='valgrind --leak-check=yes --show-reachable=yes'

alias grep='grep --color -n'

alias c='clear'
alias df='df -h'
alias du='du -h'
alias ls='ls -h'
alias ll='ls -l'
alias la='ls -la'
alias cp='cp -v'
alias mv='mv -v'

alias ttar='tar -cvmpPf'
alias tuntar='tar -xvf'

alias -g .......='../../../../../..'
alias -g ......='../../../../..'
alias -g .....='../../../..'
alias -g ....='../../..'
alias -g ...='../..'

alias rm='rm -v'
alias rmd='rm -fr'
alias rms='rm *~'
alias rmc='rm *core'
alias rmo='rm *.o'
alias rmhs='rm .*~'

alias e='exit'

alias z='xtrlock'
alias x='xtrlock'

alias -g C='| wc -l'
alias -g S='| sort'
alias -g M='| most'
alias -g G='| grep'
alias -g H='| head -n'
alias -g D="DISPLAY=:0.0"

alias -g N='> /dev/null 2>&1'



alias -s c=vim
alias -s h=vim
alias -s txt=vim
alias -s gz=tuntar
alias -s zip=unzip
alias -s bz2=tuntar
alias -s tgz=tuntar
alias -s tbz=tuntar
alias -s gif=gqview
alias -s jpg=gqview
alias -s jpeg=gqview
alias -s bmp=gqview
alias -s pmg=gqview
alias -s pdf=epdfview

alias gtkcomp='gcc `pkg-config --cflags --libs gtk+-2.0`'

alias epitech='ssh appere_n@ssh.epitech.eu'
