" set leader to ,
let g:mapleader=";"

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" turn off search highlighting
nnoremap <leader><CR> :nohl<CR>

" Treat long lines as break lines (useful when moving around in them)
nnoremap <silent> j gj
nnoremap <silent> k gk

" Smart way to move between windows
nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l

" 光标在Vim窗口之间切换
"nnoremap <silent> = <C-W><C-W>

" Useful mappings for managing tabs
"map <leader>tn :tabnew <C-R>=expand("%:p:h")<CR>/
"map <leader>te :tabedit <C-R>=expand("%:p:h")<CR>/
"map <leader>to :tabonly<CR>
"map <leader>tc :tabclose<CR>

" go to prev tab
"map <S-H> gT
" go to next tab
"map <S-L> gt

" go to prev buffer
"map <S-J> bp
" go to next buffer
"map <S-K> bn
