
" configure nvcode-color-schemes
let g:nvcode_termcolors=256

" colorscheme nvcode " Or whatever colorscheme you make

let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1


colorscheme sonokai





" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
    hi CursorLineNr guifg=#ffdd33
endif









"let g:airline_theme = "minimalist" 

""""""""""AIRLINE
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

"gitgutter
let g:gitgutter_sign_added = "▌"
let g:gitgutter_sign_modified = "▌"
let g:gitgutter_sign_removed = "▁"
let g:gitgutter_sign_removed_first_line = "▔"
let g:gitgutter_sign_removed_above_and_below = "▁"
let g:gitgutter_sign_modified_removed = "▁"

