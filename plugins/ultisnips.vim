
let g:UltiSnipsExpandTrigger="<Nop>"

augroup snippets
  autocmd!
  autocmd BufEnter *.jsx UltiSnipsAddFiletypes html
  autocmd BufEnter *.tsx UltiSnipsAddFiletypes html
augroup END

