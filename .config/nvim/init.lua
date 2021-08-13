local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq

paq {'saveq/paq-nvim', opt = true}
paq {'vim-airline/vim-airline'}
-- Show buffers in airline
g['airline#extensions#tabline#enabled'] = 1

paq {'bronson/vim-trailing-whitespace'}

-- Install the gruvbox color scheme.
paq {'morhetz/gruvbox'}

-- Cap'N Proto
paq {'cstrahan/vim-capnp'}

-- Handlebars (and mustache)
paq {'mustache/vim-mustache-handlebars'}

-- Javascript
paq {'pangloss/vim-javascript'}

-- JSX
paq {'mxw/vim-jsx'}

-- JSON
paq {'leshill/vim-json'}

-- Markdown
paq {'tpope/vim-markdown'}

-- PHP
paq {'StanAngeloff/php.vim'}

-- Rust
paq {'rust-lang/rust.vim'}
g.rustfmt_autosave = 1

-- Scala
paq {'derekwyatt/vim-scala'}

-- Terraform
paq {'hashivim/vim-terraform'}

-- Typescript syntax highlighting
paq {'HerringtonDarkholme/yats.vim'}

-- TOML
paq {'cespare/vim-toml'}

-- FZF
opt.runtimepath:append('/usr/local/opt/fzf')

-- Async Linting Engine
paq {'w0rp/ale'}
-- Lint when your file is saved. Current linters only support files on disk.
g.ale_lint_on_save = 1
g.ale_lint_on_text_changed = 0
g.ale_linters = {
  rust = {'cargo'},
  javascript = {'eslint'},
  typescript = {'eslint', 'tsserver'}
}
g.ale_fixers = {
  javascript = {'eslint'},
  typescript = {'eslint'}
}

g.ale_type_map = {
  eslint = {E = 'ES', W = 'WS'}
}

g.ale_sign_error = '✘'
g.ale_sign_warning = '⚠'
g.ale_sign_style_error = '>>'
g.ale_sign_style_warning = '--'
vim.api.nvim_command('highlight ALEErrorSign ctermbg=NONE ctermfg=red')
vim.api.nvim_command('highlight ALEWarningSign ctermbg=NONE ctermfg=yellow')
vim.api.nvim_command('highlight ALEStyleErrorSign ctermbg=NONE ctermfg=darkyellow')
vim.api.nvim_command('highlight ALEStyleWarningSign ctermbg=NONE ctermfg=yellow')

paq {'reasonml-editor/vim-reason-plus'}

-- Keep undo history across sessions by storing it in a file
opt.undodir = '~/.vim_undo'
opt.undofile = true

-- Enable 'true colors': 24-bit colors like MacVim / GVim
vim.api.nvim_command('let $NVIM_TUI_ENABLE_TRUE_COLOR=1')
-- Enable syntax highlighting
vim.api.nvim_command('syntax on')
-- Display line numbers
opt.number = true
-- Use the system clipboard.
vim.api.nvim_command('set clipboard+=unnamedplus')
-- Allow switching to buffers with unsaved changes.
opt.hidden = true
-- Display a ruler at the current `textwidth` (hard limit)
vim.api.nvim_command('set colorcolumn=+0')
-- How many columns of indentation per shift.
opt.shiftwidth = 2
-- How many columns an actual <tab> character will take up.
opt.tabstop = 8
-- Insert spaces when <tab> is pressed.
opt.expandtab = true

g['gruvbox_contrast_dark'] = 'hard'
vim.api.nvim_command('colorscheme gruvbox')
opt.background = 'dark'

-- Do not use settings suggested by PEP8.
-- setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=8
g['python_recommended_style'] = 0

-- Spell checking
cmd 'autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us'

cmd 'autocmd FileType c setlocal tabstop=8'
cmd 'autocmd FileType c setlocal softtabstop=4'
cmd 'autocmd FileType c setlocal shiftwidth=4'

cmd 'autocmd FileType cucumber setlocal expandtab'
cmd 'autocmd FileType cucumber setlocal tabstop=8'
cmd 'autocmd FileType cucumber setlocal softtabstop=4'
cmd 'autocmd FileType cucumber setlocal shiftwidth=4'

-- cmd 'autocmd FileType html setlocal expandtab'
-- cmd 'autocmd FileType html setlocal tabstop=2'
-- cmd 'autocmd FileType html setlocal softtabstop=2'
-- cmd 'autocmd FileType html setlocal shiftwidth=2'

cmd 'autocmd FileType javscript setlocal expandtab'
cmd 'autocmd FileType javscript setlocal tabstop=2'
cmd 'autocmd FileType javscript setlocal softtabstop=2'
cmd 'autocmd FileType javscript setlocal shiftwidth=2'

cmd 'autocmd FileType javscript.jsx setlocal expandtab'
cmd 'autocmd FileType javscript.jsx setlocal tabstop=2'
cmd 'autocmd FileType javscript.jsx setlocal softtabstop=2'
cmd 'autocmd FileType javscript.jsx setlocal shiftwidth=2'

cmd 'autocmd FileType json setlocal expandtab'
cmd 'autocmd FileType json setlocal tabstop=4'
cmd 'autocmd FileType json setlocal softtabstop=4'
cmd 'autocmd FileType json setlocal shiftwidth=4'

cmd 'autocmd FileType markdown setlocal expandtab'
cmd 'autocmd FileType markdown setlocal tabstop=3'
cmd 'autocmd FileType markdown setlocal softtabstop=3'
cmd 'autocmd FileType markdown setlocal shiftwidth=3'

cmd 'autocmd FileType php setlocal expandtab'
cmd 'autocmd FileType php setlocal tabstop=8'
cmd 'autocmd FileType php setlocal softtabstop=4'
cmd 'autocmd FileType php setlocal shiftwidth=4'

cmd 'autocmd FileType python setlocal expandtab'
cmd 'autocmd FileType python setlocal tabstop=2'
cmd 'autocmd FileType python setlocal softtabstop=2'
cmd 'autocmd FileType python setlocal shiftwidth=2'

cmd 'autocmd FileType reason setlocal expandtab'
cmd 'autocmd FileType reason setlocal tabstop=2'
cmd 'autocmd FileType reason setlocal softtabstop=2'
cmd 'autocmd FileType reason setlocal shiftwidth=2'

cmd 'autocmd FileType ruby setlocal expandtab'
cmd 'autocmd FileType ruby setlocal tabstop=2'
cmd 'autocmd FileType ruby setlocal softtabstop=2'
cmd 'autocmd FileType ruby setlocal shiftwidth=2'
