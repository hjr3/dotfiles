source ~/src/vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')
set nocompatible
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

set hidden

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
