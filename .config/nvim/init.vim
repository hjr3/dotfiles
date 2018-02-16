call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'bronson/vim-trailing-whitespace'

" Install the gruvbox color scheme.
Plug 'morhetz/gruvbox'

" Cap'N Proto
Plug 'cstrahan/vim-capnp'

" Javascript
Plug 'pangloss/vim-javascript'

" Markdown
Plug 'tpope/vim-markdown'

" PHP
Plug 'https://github.com/StanAngeloff/php.vim'

" Rust
Plug 'rust-lang/rust.vim'

" Scala
Plug 'https://github.com/derekwyatt/vim-scala'

" TOML
Plug 'cespare/vim-toml'

call plug#end()

"Spell checking
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us

" Keep undo history across sessions by storing it in a file
try
  set undodir=/home/herman/.vim_undo
  set undofile
catch
endtry

" Enable 'true colors': 24-bit colors like MacVim / GVim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Enable syntax highlighting
syntax on
" Display line numbers
set number
" Use the system clipboard.
set clipboard+=unnamedplus
" Allow switching to buffers with unsaved changes.
set hidden
" Display a ruler at the current `textwidth` (hard limit)
set colorcolumn=+0
" How many columns of indentation per shift.
set shiftwidth=2
" How many columns an actual <tab> character will take up.
set tabstop=8
" Insert spaces when <tab> is pressed.
set expandtab

let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
set background=dark
