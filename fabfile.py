from fabric.api import *
import fabric.colors
import os
import sys

HOME = os.environ['HOME']

def _gitDeploy(repo, dest):
  local('git clone %s' % repo)
  repo = repo.split('/')[-1].split('.')[0]
  for dir in [file for file in os.listdir(repo) if file[0] != '.' and os.path.isdir(os.path.join(repo, file)) and not [f for f in os.listdir(os.path.join(repo, file)) if f[0] != '.'] == []]:
    local('mkdir -p %s/%s && cp %s/%s/* %s/%s' % (dest, dir, repo, dir, dest, dir))
  local('rm -rf %s' % repo)


"""
def test():
  _gitDeploy('git://github.com/pangloss/vim-javascript.git', 'lol')
"""

def vim():
  local("rm -rf %s/.vimrc && rm -rf %s/.vim" % (HOME, HOME))
  local("cp -r vim %s/.vim" % HOME)
  local("ln -s %s/.vim/vimrc.vim %s/.vimrc" % (HOME, HOME))

  _gitDeploy('git://github.com/tpope/vim-haml.git', '%s/.vim' % HOME)
  _gitDeploy('git://github.com/pangloss/vim-javascript.git', '%s/.vim' % HOME)



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
