#!/usr/local/bin/zsh

if [[ ${JOSHFIRE} == 1 ]] {

  alias gcjf='git clone git@github.com:joshfire/joshlib.git'


  alias gvim="open -a MacVim"
  alias vim="open -a MacVim"
  alias macvim="open -a MacVim"


  alias fixjsstyle="fixjsstyle --strict"
  alias fix="fixjsstyle"


  alias gjslint="gjslint --strict"
  alias gjsl="gjslint"


  export PATH="$PATH:/Users/nathan/bin:/Users/nathan/Projects/UglifyJS/bin"

  alias jsb="python ~/bin/jsbeautifier.py -s 2"

}
