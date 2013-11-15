#!/bin/bash

# If file exists
if [ -a ~/.vimrc ]
then
  echo "~.vimrc already exists. Please remove."
  exit
else
  echo "Making .vimrc symlink..."
  ln -s vim/.vimrc ~/.vimrc
fi

# If file exists
if [ -a ~/.vim ]
then
  echo "~.vim already exists. Please remove."
  exit
else
  echo "Making .vim symlink..."
  ln -s vim ~/.vim
fi

# If file exists
if [ -a ~/.tmux.conf ]
then
  echo "~/.tmux.conf already exists. Please remove."
  exit
else
  echo "Making .tmux.conf symlink..."
  ln -s tmux/tmux.conf ~/.tmux.conf
fi

# If file exists
if [ -a ~/.bashrc ]
then
  echo "~/.bashrc already exists. Please remove."
  exit
else
  echo "Making .bashrc symlink..."
  ln -s bash/bashrc ~/.bashrc
fi

echo "Updating git submodules"
git submodule init
git submodule update
