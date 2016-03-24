" ----- flazz/vim-colorschemes -----
"https://github.com/flazz/vim-colorschemes

colorscheme gruvbox
"colorscheme molokai



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
let g:ctrlp_map = '<C-O>'
let g:ctrlp_cmd = 'CtrlP'
map <C-M> :CtrlPMRU<CR> 

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

"using <S-T> to jump out

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

" Turn of the default mapping 
let g:multi_cursor_use_default_mapping=0

" Set the mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'



" ----- tpope/vim-surround -----
"https://github.com/tpope/vim-surround
"cs ds ys





" ----- SirVer/ultisnips -----
"https://github.com/SirVer/ultisnips
"https://github.com/honza/vim-snippets

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
let g:ULtiSnipsUsePythonVersion = 2
let g:UltiSnipsListSnippets='<C-e>'



" ----- vim-fugitive -----
"https://github.com/tpope/vim-fugitive
"https://github.com/airblade/vim-gitgutter

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500



" ----- YankRing -----
"https://github.com/vim-scripts/YankRing.vim

let g:yankring_history_dir = '~/.vim/temps'
let g:yankring_max_history = 500
let g:yankring_persist = 1
nnoremap <silent> <F11> :YRShow<CR>



" ----- jlanzarotta/bufexplorer -----
"https://github.com/jlanzarotta/bufexplorer

" be:normal open    bt:toggle open/close    bs:force horizontal split   bv:force vertical split

nnoremap <silent> <F10> :BufExplorer<CR>
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber "



" ----- godlygeek/tabular -----
"https://github.com/godlygeek/tabular
" :Tab aim-character



" ----- plasticboy/vim-markdown -----
"https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1



" ----- octol/vim-cpp-enhanced-highlight -----
"https://github.com/octol/vim-cpp-enhanced-highlight

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1



" ----- Plugin Chiel92/vim-autoformat -----
"https://github.com/Chiel92/vim-autoformat

noremap <silent> <F7> :Autoformat<CR>

let g:formatdef_my_custom_c='"astyle --style=ansi -a --sufiix=none %"'
let g:formatters_c = ['my_custom_c']

let g:formatdef_my_custom_cpp='"astyle --style=ansi --one-line=keep-statements -a --sufiix=none %> /dev/null 2>&1"'
let g:formatters_cpp = ['my_custom_cpp']

let g:formatdef_my_custom_perl='"astyle --style=gnu --sufiix=none %"'
let g:formatters_perl = ['my_custom_perl']

let g:formatdef_my_custom_py='"autopep8 -i --aggressive %"'
let g:formatters_py = ['my_custom_py']

let g:formatdef_my_custom_java='"astyle --style=java --sufiix=none %"'
let g:formatters_java = ['my_custom_java']

let g:formatdef_my_custom_jsp='"astyle --style=gnu --sufiix=none %"'
let g:formatters_jsp = ['my_custom_jsp']

let g:formatdef_my_custom_xml='"astyle --style=gnu --sufiix=none %"'
let g:formatters_xml = ['my_custom_xml']



" ----- Valloric/YouCompleteMe -----
"  https//github.com/Valloric/YouCompleteMe
let g:ycm_error_symbol='✘'
let g:ycm_warning_symbol='▲'

let g:ycm_path_to_python_interpreter='python'

nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  
let g:ycm_confirm_extra_conf=0  
let g:ycm_collect_identifiers_from_tags_files = 1  
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0  
let g:ycm_seed_identifiers_with_syntax = 1  
let g:ycm_complete_in_comments=1  
let g:ycm_complete_in_strings=1  
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_use_ultisnips_completer=1

"set completeopt-=preview

" Menu color
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5

" Collected item color
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900



" ----- EasyMotion -----
"https://github.com/vim-scripts/EasyMotion
"let g:EasyMotion_leader_key = '<Leader>'
"let g:EasyMotion_smartcase = 1
"map f <Plug>(easymotion-prefix)
"map ff <Plug>(easymotion-s)
"map fs <Plug>(easymotion-f)
"map fl <Plug>(easymotion-lineforward)
"map fj <Plug>(easymotion-j)
"map fk <Plug>(easymotion-k)
"map fh <Plug>(easymotion-linebackward)


" ----- scrooloose/syntastic settings -----
" https://github.com/scrooloose/syntastic

" Recommended settings from github
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0
"let g:systastic_loc_list_height = 2

"let g:syntastic_error_symbol = '✘'
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲⚠"

"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
""let g:syntastic_enable_balloons = 1 "whether to show balloons"
