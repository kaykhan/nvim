call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
"NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
"Theme
"Plug 'hoob3rt/lualine.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
"Plug 'sainnhe/sonokai'
Plug 'projekt0n/github-nvim-theme'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"lspconfig
Plug 'neovim/nvim-lspconfig'

"auto complete
Plug 'hrsh7th/nvim-compe'

"diagnostic list
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

"pairs"
Plug 'jiangmiao/auto-pairs'

"react snippets"
Plug 'SirVer/ultisnips' "causing tab to not work"
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'

"dev icons
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-surround'
call plug#end()
 

let g:UltiSnipsExpandTrigger="<Nop>"


"source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nvim-tree.vim

"LSP
source ~/.config/nvim/lsp/lsp-config.vim
source ~/.config/nvim/lsp/autocomplete.vim
