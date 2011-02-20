#!/usr/local/bin/zsh


back () {
  if [[ "$OLDPWD" != "" ]]
  then
    cd $OLDPWD
  fi
}

reload () {
  . ${HOME}/.zshrc
  back
}

scpe () {
    scp -r "appere_n@ssh.epitech.eu:/u/all/appere_n/cu/${1}" ${2}
}

cdmkdir () {
    { unsetopt xtrace } 2> /dev/null
    ## create a new directory and cd into it
    mkdir -p "${1}"
    cd "${1}"
}

clean()
{
  SEARCH='.'
  if [ ${1} ]
    then
	SEARCH=${1}
  fi
  find ${SEARCH} \( -name "*~" -or -name ".*~" -or -name ".*.swp" -or -name ".*.swo" -or -name "*.core" -or -name "*.o" \) -exec rm -fv {} \;
}

setenv()
{
  typeset -x "${1}${1:+=}${(@)argv[2,$#]}"
}

save ()
{
  if [[ ${1} == 'dev' ]]
    then
    tar -cvmpLPf ~/saves/Save.$(date +%d%m%Y).dev.tar ~/dev
    print "Sauvegarde des fichiers DEV effectuee vers -> saves/Save.$(date +%d%m%Y).dev.tar"
  else
    echo "Usage incorrect : save [ev]";
  fi
}

mtar()
{
  if [[ ${1} != '' ]]
    then
    tar -cvmpLPf ~/saves/Save.$(date +%Y)"-"$(date +%m)"-"$(date +%d)".${1}".tar ${PWD}/"${1}"
  else
    echo "Precisez un repertoire.";
  fi
}

vman() { /usr/bin/man $* | col -b | vim -c 'set ft=man nomod nolist' -; }
#vman() { vim -c "Man $2" -c only }

xpwd() { pwd | xclip -i ; xclip -o ; }
xcd () { cd `xclip -o` ; }

vimcaps() { xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' }


escp()
{
  scp -r appere_n@ssh.epitech.eu:/u/all/appere_n/cu/${1} ${2}
}

escp()
{
  scp -r appere_n@ssh.epitech.eu:/u/all/appere_n/cu/${1} ${2}
}

essh()
{
  ssh appere_n@ssh.epitech.eu
}

escpf()
{
  scp -r appere_n@ssh.epitech.eu:/u/all/${1} ${2}
}

escpt()
{
  scp -r ${1} appere_n@ssh.epitech.eu:/u/all/${2}
}

essh()
{
  ssh appere_n@ssh.epitech.eu
}


# EOF
