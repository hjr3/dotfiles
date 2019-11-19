" Including PDV
source ~/.vim/plugin/php/php-doc.vim

" PHPDocumenter Commands
inoremap <C-D>p <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-D>p :call PhpDocSingle()<CR>
let g:pdv_cfg_Author = $AUTHOR
let g:pdv_cfg_Version = ""
let g:pdv_cfg_Copyright = "2014 Herman J. Radtke III"
