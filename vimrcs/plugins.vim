filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Manager plugins
Plugin 'gmarik/Vundle.vim'

" colorscheme
Plugin 'flazz/vim-colorschemes'

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

" True sublime test style multiple selections for vim
Plugin 'terryma/vim-multiple-cursors'

" The plugin provides mapping to easily delete, changeand add surroundings in pairs
Plugin 'tpope/vim-surround'

" EasyMotion provides a much simpler way to use some motions in vim
"Plugin 'EasyMotion'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
"Plugin 'ervandew/supertab'

" UltiSnips is the ultimate solution for snippets in Vim
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Work with git in Vim
"Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'

" Maintains a histroy of previous yanks,changes and deletes
"Plugin 'YankRing.vim'

" bufexplorer can quickly and easily switch between buffers
"Plugin 'jlanzarotta/bufexplorer'

" Distraction-free writing in Vim
"Plugin 'junegunn/goyo.vim'

" vim-commentary
"Plugin 'tpope/vim-commentary'

" Syntax highlighting matching rules and mappings for the original Markdown and extensions
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" It allows to visually select increasingly larger regions of text using the same key combination
"Plugin 'terryma/vim-expand-region'

" A code-completion engine for Vim
"Plugin 'Valloric/YouCompleteMe'

"additional vim c++ syntax highlighting
"Plugin 'octol/vim-cpp-enhanced-highlight'

"provide easy code formatting in vim
"Plugin 'Chiel92/vim-autoformat'


call vundle#end()

filetype plugin indent on

