" highlight enable
"syntax enable
syntax on

" Close the VI Compatible
set nocompatible

" Set viminfo file
set viminfo='1000,f1,:1000,/1000

" Keep 1000 lines of command line history
set history=1000

" Auto read file when it is changed
set autoread

" Auto change the file path
set autochdir

" Set 5 lines to the cursor
set scrolloff=5

" Turn on the Wild menu
set wildmenu

" start wild expansion in the command line using <TAB>
set wildchar=<TAB>

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Forbid restart searching when buffer is empty
set nowrapscan

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" A buffer becomes hidden when it is abandoned
"set hidden

" Add a bit extra margin to the left
"set foldcolumn=1

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Charset Init
scriptencoding utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Set a tab is four spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Line break on 500 characters
set linebreak
set textwidth=500

" Enable auto indentation
set autoindent
set smartindent

" Wrap lines
set wrap

" Show the line number
set number

" Show CMD
set showcmd

" Mouse Support in VIM
"set mouse=a

" Always show statusbar
set laststatus=2

" Change the updatetime
set updatetime=250

" Yank to the system register (*) by default
set clipboard+=unnamed

" Show current mode
set showmode

" Copy the previous indentation on autoindenting
set copyindent

" Highlight current line
"set cursorline

" Highlight current column
"set cursorcolumn

" Abandon to split word with special character
set iskeyword+=_,$,@,%,#,-

" Set foldmethod manula/indent/syntax   za zR zM
set foldmethod=syntax

" Close all fold when startup
set nofoldenable

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn on persistent undo
try
    set undodir=~/.vim/temps/
    set undofile
catch
endtry

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set showtabline=2
    "set tabline = %M\ %t
catch
endtry

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" Open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif

" No gui options
"set guioptions=

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
