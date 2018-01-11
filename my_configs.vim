" fold mothod
set fdm=indent

" size of a hard tabstop
set tabstop=2

" size of an indent
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

set encoding=utf-8
set fileencoding=utf-8
set number
set nofoldenable

nmap <Left> :tabp<CR>
nmap <Right> :tabn<CR>

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

map <F3> :NERDTreeToggle<cr>
map <F4> :GitGutterToggle<cr>

inoremap $t <><esc>i

