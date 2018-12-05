#/bin/bash

echo "This script replaces the current vim settings!"

rm -rf ~/.vimrc
rm -rf ~/.vim/
cp .vimrc ~/

cp Tomorrow-Night-Bright.vim /usr/share/vim/vim74/colors/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

vim +PlugInstall +qall 
