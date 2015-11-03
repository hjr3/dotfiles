" rustfmt integration
" see http://johannh.me/blog/rustfmt-vim.html
let g:formatdef_rustfmt = '"rustfmt"'
let g:formatters_rust = ['rustfmt']
au BufWrite * :Autoformat
