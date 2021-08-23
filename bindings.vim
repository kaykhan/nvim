inoremap ff <ESC>
imap ff <Esc> 


"coc-definition - go to definition of function
"nmap <silent> gd <Plug>(coc-definition)


"coc-rename - rename file using f2 key
"nmap <F2> <Plug>(coc-rename)


" for command mode
"nnoremap <S-Tab> <<
"for insert mode
"inoremap <S-Tab> <C-d>


" remaps to make tab for autocomplete work
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

