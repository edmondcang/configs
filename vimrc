" Clone these sources to ~/.vim_runtime/sources_non_forked
" vim-airline
" onedark.vim
" vim-javascript
" vim-autoformat
" YouCompleteMe
" nerdtree-git-plugin

" Amix Vim
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python']

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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax on
colorscheme onedark

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

