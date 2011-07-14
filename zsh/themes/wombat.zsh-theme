
if [ "$(whoami)" = "root" ]
then
  C1="052"
  C2="124"
else
  C1="101"
  C2="143"
fi

RPROMPT='$(git_prompt_info)%{$reset_color%}'
PROMPT='%B%{$FG[$C1]%}%n %{$FG[$C2]%}%~ %{$FG[$C1]%}> %{$reset_color%}'


ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[192]%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[124]%} ✗"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[101]%}< %{$FG[143]%}"
ZSH_THEME_GIT_PROMPT_MIDDLE="%{$FG[101]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[101]%}"

