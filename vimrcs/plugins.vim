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









" ----- altercation/vim-colors-solarized -----
" https://github.com/altercation/solarized

"colorscheme solarized

"if the command above is not work,uncomment the next line
"let g:solarized_termcolors=256



" ----- tomasr/molokai -----
" https://github.com/tomasr/molokai

let g:molokai_original=1

"if the command above is not work,uncomment the next line
"let g:rehash256=1



" ----- bling/vim-airline -----
" https://github.com/vim-airline/vim-airline
" ----- vim-airline/vim-airline-themes
" https:://github.com/vim-airline/vim-airline-themes

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme="molokai"

"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" ----- scrooloose/nerdtree -----
" https://github.com/scrooloose/nerdtree
" ----- jistr/nerdtree-tabs -----
" https://github.com/jistr/vim-nerdtree-tabs

" Open/close NERDTree Tabs with F3
map <silent> <F3> :NERDTreeTabsToggle<CR>
" Auto close VIM when only nerdtree is left
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif

let NERDTreeIgnore = ['\.pyc$','__pycache__',' CVS',' .git','.DS_Store','\.swp$','\.swo$']
let NERDTreeShowHidden = 0

let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_synchronize_view = 1
let g:nerdtree_tabs_synchronize_focus = 1
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_startup_cd = 1
let g:nerdtree_tabs_autofind = 0

" Set Tree Symbol
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



" ----- scrooloose/syntastic settings -----
" https://github.com/scrooloose/syntastic

" Recommended settings from github
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

"augroup mySyntastic
"  au!
"  au FileType tex let b:syntastic_mode = "passive"
"augroup END



" ----- xolox/vim-easytags settings -----
" https://github.com/xolox/vim-misc
" https://github.com/xolox/vim-easytags

let g:easytags_cmd = '/usr/bin/ctags'

"let g:easytags_file = '~/.vim/tags'
set tags=./tags;
let g:easytags_dynamic_files = 1

let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1



" ----- majutsushi/tagbar settings -----
" https://github.com/majutsushi/tagbar

" Open/close tagbar with F4
nmap <F4> :TagbarToggle<CR>

" Open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

let g:tagbar_autofocus = 0
let tagbar_width = 32

" Window won't displace help message
let g:tagbar_compact = 1

let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'd:macros:1',
         \ 'g:enums',
         \ 't:typedefs:0:0',
         \ 'e:enumerators:0:0',
         \ 'n:namespaces',
         \ 'c:classes',
         \ 's:structs',
         \ 'u:unions',
         \ 'f:functions',
         \ 'm:members:0:0',
         \ 'v:global:0:0',
         \ 'x:external:0:0',
         \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }



" ----- vim-scripts/a.vim -----
"https://github.com/vim-scripts/a.vim

" F2 open .cpp or .h file in split window
nnoremap <silent> <F2> :AV<CR>



" ----- kien/ctrlp.vim -----
"https://github.com/kien/ctrlp.vim

" Default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" When invoked without an explicit starting directory,CtrlP won't set its local working directory
let g:ctrlp_working_path_mode =''

" Set ignore file type
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']



" ----- Raimondi/delimitMate settings -----
"https://github.com/Raimondi/delimitMate

let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END



" ----- scrooloose/nerdcommenter -----
"https://github.com/scrooloose/nerdcommenter

"using <leader>cc to comment
"using <leader>cu to uncomment



" ----- dyng/ctrlsf.vim -----
"https://github.com/mileszs/ack.vim
"https://github.com/dyng/ctrlsf.vim



