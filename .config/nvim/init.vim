call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
" Show buffers in airline
let g:airline#extensions#tabline#enabled = 1

Plug 'bronson/vim-trailing-whitespace'

" Install the gruvbox color scheme.
Plug 'morhetz/gruvbox'

" Cap'N Proto
Plug 'cstrahan/vim-capnp'

" Handlebars (and mustache)
Plug 'mustache/vim-mustache-handlebars'

" Javascript
Plug 'pangloss/vim-javascript'

" JSX
Plug 'mxw/vim-jsx'

" JSON
Plug 'leshill/vim-json'

" Markdown
Plug 'tpope/vim-markdown'

" PHP
Plug 'https://github.com/StanAngeloff/php.vim'

" Rust
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" Scala
Plug 'https://github.com/derekwyatt/vim-scala'

" Terraform
Plug 'hashivim/vim-terraform'

" Typescript syntax highlighting
Plug 'https://github.com/HerringtonDarkholme/yats.vim'

" TOML
Plug 'cespare/vim-toml'

" FZF
Plug '/usr/local/opt/fzf'

" Async Linting Engine
Plug 'w0rp/ale'
" Lint when you file is saved. Current linters only support files on disk.
let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed = 0
let g:ale_linters={'rust': ['cargo'], 'javascript': ['eslint'], 'typescript': ['eslint', 'tsserver']}
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['eslint']}

let g:ale_type_map = {'eslint': {'E': 'ES', 'W': 'WS'}}

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_sign_style_error = '>>'
let g:ale_sign_style_warning = '--'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEStyleErrorSign ctermbg=NONE ctermfg=darkyellow
highlight ALEStyleWarningSign ctermbg=NONE ctermfg=yellow

Plug 'reasonml-editor/vim-reason-plus'

call plug#end()

"Spell checking
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us

" Keep undo history across sessions by storing it in a file
try
  if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
      set undodir=/Users/herman/.vim_undo
    else
      set undodir=/home/herman/.vim_undo
    endif
  endif
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

" Do not use settings suggested by PEP8.
" setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=8
let g:python_recommended_style = 0

autocmd FileType c setlocal tabstop=8
autocmd FileType c setlocal softtabstop=4
autocmd FileType c setlocal shiftwidth=4

autocmd FileType cucumber setlocal expandtab
autocmd FileType cucumber setlocal tabstop=8
autocmd FileType cucumber setlocal softtabstop=4
autocmd FileType cucumber setlocal shiftwidth=4

"autocmd FileType html setlocal expandtab
"autocmd FileType html setlocal tabstop=2
"autocmd FileType html setlocal softtabstop=2
"autocmd FileType html setlocal shiftwidth=2

autocmd FileType javscript setlocal expandtab
autocmd FileType javscript setlocal tabstop=2
autocmd FileType javscript setlocal softtabstop=2
autocmd FileType javscript setlocal shiftwidth=2

autocmd FileType javscript.jsx setlocal expandtab
autocmd FileType javscript.jsx setlocal tabstop=2
autocmd FileType javscript.jsx setlocal softtabstop=2
autocmd FileType javscript.jsx setlocal shiftwidth=2

autocmd FileType json setlocal expandtab
autocmd FileType json setlocal tabstop=4
autocmd FileType json setlocal softtabstop=4
autocmd FileType json setlocal shiftwidth=4

autocmd FileType markdown setlocal expandtab
autocmd FileType markdown setlocal tabstop=3
autocmd FileType markdown setlocal softtabstop=3
autocmd FileType markdown setlocal shiftwidth=3

autocmd FileType php setlocal expandtab
autocmd FileType php setlocal tabstop=8
autocmd FileType php setlocal softtabstop=4
autocmd FileType php setlocal shiftwidth=4

autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=2
autocmd FileType python setlocal softtabstop=2
autocmd FileType python setlocal shiftwidth=2

autocmd FileType reason setlocal expandtab
autocmd FileType reason setlocal tabstop=2
autocmd FileType reason setlocal softtabstop=2
autocmd FileType reason setlocal shiftwidth=2

autocmd FileType ruby setlocal expandtab
autocmd FileType ruby setlocal tabstop=2
autocmd FileType ruby setlocal softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2
