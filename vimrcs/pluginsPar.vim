" ----- flazz/vim-colorschemes -----
"https://github.com/flazz/vim-colorschemes

colorscheme gruvbox 



" ----- bling/vim-airline -----
" https://github.com/vim-airline/vim-airline
" https:://github.com/vim-airline/vim-airline-themes

"let g:airline_theme="luna"

let g:airline_powerline_fonts = 1 

" Show airline for tabs buffers too
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



" ----- scrooloose/nerdtree -----
" https://github.com/scrooloose/nerdtree
" https://github.com/jistr/vim-nerdtree-tabs

" Open/close NERDTree Tabs with F3
map <F3> :NERDTreeTabsToggle<CR>
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

"let g:syntastic_cpp_include_dirs=['/usr/local/include/Geant4/']
"let g:syntastic_cpp_compiler= 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'



" ----- xolox/vim-easytags settings -----
" https://github.com/xolox/vim-misc
" https://github.com/xolox/vim-easytags

let g:easytags_cmd = '/usr/bin/ctags'

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

" Create file mapping
let g:alternateExtensions_h = "c,cpp,cxx,cc"
let g:alternateExtensions_hh = "c,cpp,cxx,cc"
let g:alternateExtensions_c = "h,hh"
let g:alternateExtensions_cc = "h,hh"
let g:alternateExtensions_cpp = "h,hh"
let g:alternateExtensions_cxx = "h,hh"

let g:alternateExtensions_H = "C,CPP,CXX,CC"
let g:alternateExtensions_HH = "C,CPP,CXX,CC"
let g:alternateExtensions_C = "H,HH"
let g:alternateExtensions_CC = "H,HH"
let g:alternateExtensions_CPP = "H,HH"
let g:alternateExtensions_CXX = "H,HH"


" ----- kien/ctrlp.vim -----
"https://github.com/kien/ctrlp.vim

" Default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
map <C-f> :CtrlPMRU<CR>

" When invoked without an explicit starting directory,CtrlP won't set its local working directory
let g:ctrlp_working_path_mode =''

" Set ignore file type
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Set the limit of the heigh
let g:ctrlp_max_height = 15

let g:ctrlp_match_window_reversed=0

let g:ctrlp_mruf_max=500

let g:ctrlp_follow_symlinks=1



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

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>



" ----- terryma/vim-multiple-cursors -----
"https://github.com/terryma/vim-multiple-cursors



" ----- tpope/vim-surround -----
"https://github.com/tpope/vim-surround




" ----- EasyMotion -----
"https://github.com/vim-scripts/EasyMotion



" ----- ervandew/supertab -----
"https://github.com/ervandew/supertab



" ----- SirVer/ultisnips -----
"https://github.com/SirVer/ultisnips
"https://github.com/honza/vim-snippets

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger = '<C-b>'
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"let g:ULtiSnipsUsePythonVersion = 2



" ----- wincent/command-t -----
"https://github.com/wincent/command-t



" ----- vim-fugitive -----
"https://github.com/tpope/vim-fugitive
"https://github.com/airblade/vim-gitgutter



" ----- YankRing -----
"https://github.com/vim-scripts/YankRing.vim



" ----- MRU ------
"https://github.com/vim-scripts/mru.vim



" ----- L9 -----
"https://github.com/vim-scripts/L9



" ----- jlanzarotta/bufexplorer -----
"https://github.com/jlanzarotta/bufexplorer



" ----- junegunn/goyo -----
"https://github.com/junegunn/goyo.vim



" ----- tpope/vim-commentary -----
"https://github.com/tpope/vim-commentary



" ----- plasticboy/vim-markdown -----
"https://github.com/plasticboy/vim-markdown



" ----- terryma/vim-expand-region -----
"https://github.com/terryma/vim-expand-region



" ----- Valloric/YouCompleteMe -----
"  https//github.com/Valloric/YouCompleteMe

" Menu color
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5

" Collected item color
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
"let g:ycm_complete_in_comments=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
"let g:ycm_confirm_extra_conf=0

" 开启 YCM 标签补全引擎
"let g:ycm_collect_identifiers_from_tags_files=0

"" 引入 C++ 标准库 tags
"set tags+=/data/misc/software/app/vim/stdcpp.tags
"set tags+=/data/misc/software/app/vim/sys.tags

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>

" 补全内容不以分割子窗口形式出现，只显示补全列表
"set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0

" 语法关键字补全
"let g:ycm_seed_identifiers_with_syntax=1

