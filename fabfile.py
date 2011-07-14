from fabric.api import *
import fabric.colors
import os
import sys

HOME = os.environ['HOME']

def vim():
  local("mv vim %s/.vim" % HOME)
  local("rm %s/.vimrc" % HOME)
  local("ln -s %s/.vim/vimrc.vim .vimrc" % (HOME, HOME))


def zsh():
  local("git clone git://github.com/robbyrussell/oh-my-zsh.git" % HOME)
  local("git clone git://github.com/sunaku/zsh-history-substring-search.git" % HOME)
  local("rm -rf %s/.zsh && rm -rf %s/.zshrc" % (HOME, HOME))
  local("mv oh-my-zsh %s/.zsh" % HOME)
  local("mv zsh/zsh-history-substring-search %s/.zsh/plugins/history-substring-search" % HOME)
  local("mv zsh/custom/* %s/.zsh/custom/" % HOME)
  local("mv zsh/themes/* %s/.zsh/themes/" % HOME)
  local("ln -s %s/.zsh/zshrc.zsh .zshrc" % (HOME, HOME))

def wm():
  local("rm -rf %s/.fluxbox" % HOME)
  local("mv fluxbox %s/.fluxbox" % HOME)
  local("mv dot.xinitrc %s/.xinitrc" % HOME)
  local("mv dot.Xdefaults %s/.Xdefaults" % HOME)


def install():
  print HOME
