#!/bin/sh
command -v ctags >/dev/null 2>&1 || { echo >&2 "ctags is missing.Please install first"; exit 1; }  
command -v python >/dev/null 2>&1 || { echo >&2 "python is missing.Please install first"; exit 1; }  
command -v ruby >/dev/null 2>&1 || { echo >&2 "ruby is missing.Please install first"; exit 1; }  
command -v clang >/dev/null 2>&1 || { echo >&2 "clang is missing.Please install first"; exit 1; }  

rm -rf ~/.vim
rm -rf ~/.vimrc
ln -sf $PWD ~/.vim;
#ln -sf $PWD/vimrcs/vimrc ~/.vimrc;
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

echo "All configure down!! Enjoy!!  :)"
