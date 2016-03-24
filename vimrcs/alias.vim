" set leader to ,
let mapleader=","
let g:mapleader=","

" :W sudo saves the file 
command W w !sudo tee % > /dev/null

" turn off search highlighting
nmap <leader><CR> :nohl<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew <C-R>=expand("%:p:h")<CR>/
map <leader>te :tabedit <C-R>=expand("%:p:h")<CR>/
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>

" go to prev tab 
map <S-H> gT
" go to next tab
map <S-L> gt

" go to prev buffer
map <S-J> bp
" go to next buffer
map <S-K> bn
