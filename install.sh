#!/bin/sh

package="vim git ctags python ruby clang astyle"

echo "All packages: $package are necessary before install vimrc"

if which apt-get 1>/dev/null 2>&1;then
    #sudo apt-get install -y vim git ctags python ruby clang astyle
    sudo apt-get install -y $package
elif which yum 1>/dev/null 2>&1;then
    #sudo yum install -y vim git ctags python ruby clang astyle
    sudo yum install -y $package 
elif which brew 1>/dev/null 2>&1;then
    #brew install vim git ctags astyle ruby clang astyle
    brew install  $package
fi

mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old

ln -sf $PWD ~/.vim;
cp ./vimrcs/vimrc ~/.vimrc

if [ ! -d temps ];
then
    mkdir temps
fi

checkVi=`vim --version|grep +python`
if [ "x$checkVi" == "x" ]
then
    echo "Vim is not complied with python, please rebuild it before install"
    exit
fi

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/
git clone https://github.com/powerline/fonts
cd fonts
./install.sh

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang

echo "All configure down!! Enjoy!! :) "
