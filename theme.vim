"let g:material_theme_style = "darker"
"let g:material_terminal_italics = 1
"colorscheme monokai_pro

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
EOF

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
endif









let g:airline_theme = "minimalist" 

""""""""""AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"gitgutter
let g:gitgutter_sign_added = "▌"
let g:gitgutter_sign_modified = "▌"
let g:gitgutter_sign_removed = "▁"
let g:gitgutter_sign_removed_first_line = "▔"
let g:gitgutter_sign_removed_above_and_below = "▁"
let g:gitgutter_sign_modified_removed = "▁"

