#!/bin/bash

RDIR="$( dirname "$SOURCE" )"
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
if [ "$DIR" != "$RDIR" ]; then
  echo "DIR '$RDIR' resolves to '$DIR'"
fi

# If file exists
if [ -a ~/.vimrc ]
then
  echo "~.vimrc already exists. Please remove."
  exit
else
  echo "Making .vimrc symlink..."
  ln -s $DIR/vim/vimrc ~/.vimrc
fi

# If file exists
if [ -a ~/.vim ]
then
  echo "~.vim already exists. Please remove."
  exit
else
  echo "Making .vim symlink..."
  ln -s $DIR/vim ~/.vim
fi

# If file exists
if [ -a ~/.tmux.conf ]
then
  echo "~/.tmux.conf already exists. Please remove."
  exit
else
  echo "Making .tmux.conf symlink..."
  ln -s $DIR/tmux/tmux.conf ~/.tmux.conf
fi

# If file exists
if [ -a ~/.bashrc ]
then
  echo "~/.bashrc already exists. Please remove."
  exit
else
  echo "Making .bashrc symlink..."
  ln -s $DIR/bash/bashrc ~/.bashrc
fi

echo "Updating git submodules"
git submodule init
git submodule update
