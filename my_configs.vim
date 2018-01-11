autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>

nmap <Left> :tabp<CR>
nmap <Right> :tabn<CR>

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
