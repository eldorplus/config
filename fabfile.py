from fabric.api import *
import fabric.colors
import os
import sys

HOME = os.environ['HOME']

def vim():
  local("rm -rf %s/.vimrc && rm -rf %s/.vim" % (HOME, HOME))
  local("cp -r vim %s/.vim" % HOME)
  local("ln -s %s/.vim/vimrc.vim %s/.vimrc" % (HOME, HOME))


def zsh():
  local("git clone git://github.com/robbyrussell/oh-my-zsh.git")
  local("git clone git://github.com/sunaku/zsh-history-substring-search.git")
  local("rm -rf %s/.zsh && rm -rf %s/.zshrc" % (HOME, HOME))
  local("mv oh-my-zsh %s/.zsh" % HOME)
  local("mv zsh-history-substring-search %s/.zsh/plugins/history-substring-search" % HOME)
  local("cp zsh/custom/* %s/.zsh/custom/" % HOME)
  local("cp zsh/themes/* %s/.zsh/themes/" % HOME)
  local("cp zsh/zshrc.zsh %s/.zsh/" % HOME)
  local("ln -s %s/.zsh/zshrc.zsh %s/.zshrc" % (HOME, HOME))

def wm():
  local("rm -rf %s/.fluxbox" % HOME)
  local("cp -r fluxbox %s/.fluxbox" % HOME)
  local("cp dot.xinitrc %s/.xinitrc" % HOME)
  local("cp dot.Xdefaults %s/.Xdefaults" % HOME)


def install():
  print HOME
