filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Manager plugins
Plugin 'gmarik/Vundle.vim'

" colorscheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The NERD tree allows to explore filesystem and to open files and directories
Plugin 'scrooloose/nerdtree'	
Plugin 'jistr/vim-nerdtree-tabs'

" Syntastic is a syntax checking plugin for Vim
Plugin 'scrooloose/syntastic'

" Automated tag generatiron 
Plugin 'xolox/vim-misc'     
Plugin 'xolox/vim-easytags'

" A plugin reads your tags file and displays the information in an accesible way inside vim
Plugin 'majutsushi/tagbar'		

" Switch between source files and header files quickly
Plugin 'vim-scripts/a.vim'		

" A magical vim plugin for finding files quickly 
Plugin 'kien/ctrlp.vim'			

" A smart plugin to insert matching delimiters, like quotes,parentheses,and curly braches 
Plugin 'Raimondi/delimitMate'           

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" A ack/ag powered code serach and view tool
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'

call vundle#end()

filetype plugin indent on


