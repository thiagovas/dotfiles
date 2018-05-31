#!/bin/bash

sudo apt-get update
sudo apt-get install autotools-dev automake build-essential cmake


# Installing ncurses
sudo apt-get install libncurses5 libncurses5-dev

# Installing tmux
sudo apt-get install tmux

# Installing Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Installing some plugins
git clone https://github.com/wesQ3/vim-windowswap ~/.vim/bundle/vim-windowswap
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-syntastic/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/vim-scripts/DoxygenToolkit.vim.git ~/.vim/bundle/DoxygenToolkit

# Installing YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe  ~/.vim/bundle/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
sudo apt install libclang-5.0-dev
./install.py --clang-completer
cd -

cat >~/.ycm_extra_conf.py <<EOL
def FlagsForFile( filename, **kwargs ):
  return {
    'flags': [ '-x', 'c++', '-Wall', '-Wextra' ],
  }
EOL
