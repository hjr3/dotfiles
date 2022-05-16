local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local keymap = vim.api.nvim_set_keymap

require "paq" {
  'saveq/paq-nvim';
  'vim-airline/vim-airline';
  'bronson/vim-trailing-whitespace';
  -- Install the gruvbox color scheme.
  'morhetz/gruvbox';
  -- Cap'N Proto
  'cstrahan/vim-capnp';
  -- Handlebars (and mustache)
  'mustache/vim-mustache-handlebars';
  -- Javascript
  'pangloss/vim-javascript';
  -- JSX
  'mxw/vim-jsx';
  -- JSON
  'leshill/vim-json';
  -- Markdown
  'tpope/vim-markdown';
  -- PHP
  'StanAngeloff/php.vim';
  -- Rust
  'rust-lang/rust.vim';
  -- Scala
  'derekwyatt/vim-scala';
  -- Terraform
  'hashivim/vim-terraform';
  -- Typescript syntax highlighting
  'HerringtonDarkholme/yats.vim';
  -- TOML
  { 'cespare/vim-toml', branch = 'main' };
  -- Async Linting Engine
  'w0rp/ale';
  'reasonml-editor/vim-reason-plus';
  -- coc
  { 'neoclide/coc.nvim', branch = 'release' };

  -- fzf vim support
  'junegunn/fzf';
  'junegunn/fzf.vim';
}

-- Show buffers in airline
g['airline#extensions#tabline#enabled'] = 1

g.rustfmt_autosave = 1

-- Lint when your file is saved. Current linters only support files on disk.
g.ale_lint_on_save = 1
g.ale_lint_on_text_changed = 0
g.ale_fix_on_save = 1
g.ale_linters = {
  rust = {'cargo'},
  javascript = {'eslint'},
  typescript = {'eslint', 'tsserver'},
  typescriptreact = {'eslint', 'tsserver'},
}
g.ale_fixers = {
  javascript = {'prettier'},
  typescript = {'prettier'},
  typescriptreact = {'prettier'},
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

-- Keep undo history across sessions by storing it in a file
opt.undodir = os.getenv('HOME') .. '/.vim_undo'
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

opt.background = 'dark'
g['gruvbox_contrast_dark'] = 'soft'
vim.api.nvim_command('colorscheme gruvbox')

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

-- coc mappings
-- for typescript do:  `:CocInstall coc-tsserver`
keymap('n', '<leader>d', '<plug>(coc-definition)', {})
keymap('n', '<leader>r', '<plug>(coc-references-used)', {})

-- fzf mappings
keymap('n', '<leader>b', ':Buffers<CR>', { silent = true })
