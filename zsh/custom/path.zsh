#!/usr/local/bin/zsh

if [[ ${EPITECH} == 1 ]] {

  ## figure out what the PATH should be
  typeset -U common_paths
  common_paths=(
  ${HOME}/bin						# personal stuff
  ${path} ${=$(command -p getconf PATH)//:/ } 	# what the system thinks PATH should be
  /bin /sbin /usr/bin /usr/sbin			# good places to look
  /usr/local/bin /usr/local/sbin			# freeBSD
  /usr/X11R6/bin					# X11
  /usr/pkg/bin /usr/pkg/sbin				# ???
  /usr/ucb						# solaris - BSD
  /usr/sfw/bin /usr/sfw/sbin				# solaris - sun free-ware
  /usr/xpg4/bin /usr/xpg6/bin				# solaris - X/Open Portability Guide
  /opt/local/bin /opt/local/sbin /opt/SUNWspro/bin	# solaris
  /usr/ccs/bin					# solaris - C Compilation System
  /usr/platform/$(uname -i)/sbin			# solaris - hardware dependent
  )
  unset PATH_tmp
  unsetopt NOMATCH
  for temp_path in ${common_paths}
  do
    if [[ ${OSTYPE} == solaris* ]] {
      ## solaris may has some of these directories owned by "bin:bin" (uid 2)
      ## observed on: SunOS 5.10 Generic_120011-14 sparc, core install
      test -d "${temp_path}"(u0r^IWt,u2r^IWt,Ur^IWt) && PATH_tmp="${PATH_tmp}${temp_path}:"
    } else {
    test -d "${temp_path}"(u0r^IWt,Ur^IWt) && PATH_tmp="${PATH_tmp}${temp_path}:"
    ## the next line shows how to include symlinks in the PATH
    #test -e "${temp_path}"(-/u0r^IWt,-/Ur^IWt) && PATH_tmp="${PATH_tmp}${temp_path}:"
    }
  done

  setopt NOMATCH
  export PATH=./:${PATH_tmp/%:/}
  unset common_paths temp_path PATH_tm

  ## solaris grep is lacking
  if [[ ${OSTYPE} == solaris* ]] {
    ## solaris-10 will likely have these, except core install
    [[ -x $(whence -p  ggrep) ]] && alias  grep=$(whence -p ggrep)
    [[ -x $(whence -p gegrep) ]] && alias egrep=$(whence -p gegrep)
    [[ -x $(whence -p gfgrep) ]] && alias fgrep=$(whence -p gfgrep)
  }

  [[ -x $(whence -p less) ]] && export PAGER=$(whence -p less)
  [[ -x $(whence -p most) ]] && export PAGER=$(whence -p most)
  READNULLCMD=${PAGER}

  [[ -x $(whence -p vim) ]] && export EDITOR=$(whence -p vim)

}
