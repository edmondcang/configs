set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

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

nnoremap <F5> <ESC>:w<CR>:cexpr system("python " .  expand("%"))<CR>
inoremap <F5> <ESC>:w<CR>:cexpr system("python " .  expand("%"))<CR>
"noremap <silent> <F5> <ESC>:w<CR>:set splitright<CR>:vnew<CR>:r! python #<CR>

"inoremap <silent> <c-c> <C-O>:stopinsert<CR>
nnoremap <silent> <c-q> :q<CR>
nnoremap <silent> <leader>rn :set splitright<CR>:vnew<CR>

map <F3> :NERDTreeToggle<cr>
map <F4> :GitGutterToggle<cr>

inoremap $t <><esc>i

