lua << EOF
local prettier = {
  formatCommand = "prettier --stdin-filepath ${INPUT}",
  formatStdin = true,
}

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true,
}

require'lspconfig'.efm.setup{
  on_attach = function(client)
    client.resolved_capabilities.goto_definition = false
    client.resolved_capabilities.declaration = false  
  end,
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = {".git/"},
    languages = {
      javascript = { prettier, eslint },
      typescript = { prettier, eslint },
      typescriptreact = {prettier, eslint},
      javascriptreact = {prettier, eslint},
      ["javascript.jsx"] = {prettier, eslint},
      ["typescript.tsx"] = {prettier, eslint},
      yaml = {prettier},
      json = {prettier},
      html = {prettier},
      less = {prettier},
      scss = {prettier},
      css = {prettier},
      markdown = {prettier}
    }
  },
  filetypes = {
    "javascript",
    "typescript",
    "javascriptreact",
    "javascript.jsx",  
    "typescript.tsx",
    "typescriptreact",
    "less",
    "scss",
    "css",
    "html",
  },
}

require'lspconfig'.tsserver.setup{
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
}
EOF
