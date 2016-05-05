call plug#begin('~/.config/nvim/plugged')

" Cap'N Proto schema files syntax highlighting.
Plug 'cstrahan/vim-capnp'

" Install the gruvbox color scheme.
Plug 'morhetz/gruvbox'

" Rust file detection, syntax highlighting and autoformatting.
Plug 'rust-lang/rust.vim'
" run rustfmt on save
let g:rustfmt_autosave = 0

" TOML syntax
Plug 'cespare/vim-toml'

" Lightweight status bar.
Plug 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1

" Highlight trailing whitespace.
Plug 'bronson/vim-trailing-whitespace'

" PHP syntax
Plug 'https://github.com/StanAngeloff/php.vim'

" Markdown syntax
Plug 'tpope/vim-markdown'

" Javascript syntax
Plug 'pangloss/vim-javascript'

" Add plugins to &runtimepath
call plug#end()


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
