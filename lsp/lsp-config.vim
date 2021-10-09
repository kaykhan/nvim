
"LANGUAGE SERVERS
lua << EOF

require'lspconfig'.pyright.setup{}
require("trouble").setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.prismals.setup{}
--require('lualine').setup({
--options = {theme = 'codedark'}
--})

local signs = { Error = " ", Warning = " ", Hint = " ", Information = "" }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
EOF
source ~/.config/nvim/lsp/efm-config.vim


nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <space>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <space>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <space>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <space>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <space>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <space>e :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <space>q :lua vim.lsp.diagnostic.set_loclist({workspace = true})<CR>
nnoremap <space>f :lua vim.lsp.buf.formatting()<CR>





"trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>


augroup snippets
  autocmd!
  autocmd BufEnter *.jsx UltiSnipsAddFiletypes html
  autocmd BufEnter *.tsx UltiSnipsAddFiletypes html
augroup END

