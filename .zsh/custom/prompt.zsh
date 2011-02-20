#!/usr/local/bin/zsh

#
# if [[ $(tty) != *ttyv* ]] {
#   if [[ ${OSTYPE} == solaris* ]]; then
#     export TERM=xterm
#   else
#     export TERM=xterm-256color
#   fi
# }
# 
# 256 () {
#   export TERM=xterm-256color
#   reload
# }
# 
# if [[ $(tty) != *ttyv* ]]; then
#   precmd()
#   {
#     if [[ ${TERM} == xterm* ]]
#     then
#       print -Pn "\e]0;xterm | %n@%m > %~\a"
#     fi
#   }
# fi
# 


# PROMPT -------------------------------------------------------

zmodload -i zsh/termcap

setprompt()
{
  VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
  RGB_RES='%{[0m%}'

  if [[ $(tty) != *ttyv* ]] && [[ ${TERM} == *256* ]]; then
    RGB_G1='%{[1;38;5;241m%}'
    RGB_G2='%{[1;38;5;250m%}'
    RGB_CR='%{[1;38;5;124m%}'
    RGB_CU='%{[1;38;5;64m%}'
  elif [[ 8 -eq "${termcap[Co]}" ]]; then
    RGB_G1=${RGB_RES}
    RGB_G2=${RGB_G1}
    RGB_CR='%{[1;31m%}'
    RGB_CU='%{[1;30m%}'
  else
    RGB_G1=''
    RGB_G2=''
    RGB_CR=''
    RGB_CU=''
  fi

  if [[ "$USER" == "root" ]]; then
    RGB_C=${RGB_CR}
  else
    RGB_C=${RGB_CU}
  fi

  PROMPT="$RGB_G1(${RGB_C}%n${RGB_G1}@${RGB_C}%m${RGB_G1}) (${RGB_G2}%h${RGB_G1}) ${RGB_C}%~ ${RGB_G1}>${RGB_RES} "
  if [[ ${TERM} == xterm* ]]
  then
    RPROMPT="${RGB_G1}<${VIMODE} (${RGB_C}%T${RGB_G1})${RGB_RES}"
  fi
}
setprompt


# EOF
