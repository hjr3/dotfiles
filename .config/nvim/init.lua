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
vim.g['airline#extensions#tabline#enabled'] = 1

vim.g.rustfmt_autosave = 1

-- Lint when your file is saved. Current linters only support files on disk.
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_changed = 0
vim.g.ale_fix_on_save = 1
vim.g.ale_linters = {
  rust = {'cargo'},
  javascript = {'eslint'},
  typescript = {'eslint', 'tsserver'},
  typescriptreact = {'eslint', 'tsserver'},
}
vim.g.ale_fixers = {
  javascript = {'prettier'},
  typescript = {'prettier'},
  typescriptreact = {'prettier'},
}
vim.g.ale_type_map = {
  eslint = {E = 'ES', W = 'WS'}
}

vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '⚠'
vim.g.ale_sign_style_error = '>>'
vim.g.ale_sign_style_warning = '--'
vim.api.nvim_command('highlight ALEErrorSign ctermbg=NONE ctermfg=red')
vim.api.nvim_command('highlight ALEWarningSign ctermbg=NONE ctermfg=yellow')
vim.api.nvim_command('highlight ALEStyleErrorSign ctermbg=NONE ctermfg=darkyellow')
vim.api.nvim_command('highlight ALEStyleWarningSign ctermbg=NONE ctermfg=yellow')

-- Keep undo history across sessions by storing it in a file
vim.opt.undodir = os.getenv('HOME') .. '/.vim_undo'
vim.opt.undofile = true

-- Enable 'true colors': 24-bit colors like MacVim / GVim
vim.api.nvim_command('let $NVIM_TUI_ENABLE_TRUE_COLOR=1')
-- Enable syntax highlighting
vim.api.nvim_command('syntax on')
-- Display line numbers
vim.opt.number = true
-- Use the system clipboard.
vim.api.nvim_command('set clipboard+=unnamedplus')
-- Allow switching to buffers with unsaved changes.
vim.opt.hidden = true
-- Display a ruler at the current `textwidth` (hard limit)
vim.api.nvim_command('set colorcolumn=+0')
-- How many columns of indentation per shift.
vim.opt.shiftwidth = 2
-- How many columns an actual <tab> character will take up.
vim.opt.tabstop = 8
-- Insert spaces when <tab> is pressed.
vim.opt.expandtab = true

vim.opt.background = 'dark'
vim.g['gruvbox_contrast_dark'] = 'soft'
vim.api.nvim_command('colorscheme gruvbox')

-- Do not use settings suggested by PEP8.
-- setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=8
vim.g['python_recommended_style'] = 0

-- Spell checking
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown,txt",
  callback = function()
    vim.api.nvim_set_option_value("spell", true, { scope = "local" })
    vim.api.nvim_set_option_value("spelllang", "en_us", { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c,cucumber,php",
  callback = function()
    vim.api.nvim_set_option_value("expandtab", true, { scope = "local" })
    vim.api.nvim_set_option_value("tabstop", 8, { scope = "local" })
    vim.api.nvim_set_option_value("softtabstop", 4, { scope = "local" })
    vim.api.nvim_set_option_value("shiftwidth", 4, { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.api.nvim_set_option_value("expandtab", true, { scope = "local" })
    vim.api.nvim_set_option_value("tabstop", 4, { scope = "local" })
    vim.api.nvim_set_option_value("softtabstop", 4, { scope = "local" })
    vim.api.nvim_set_option_value("shiftwidth", 4, { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.api.nvim_set_option_value("expandtab", true, { scope = "local" })
    vim.api.nvim_set_option_value("tabstop", 3, { scope = "local" })
    vim.api.nvim_set_option_value("softtabstop", 3, { scope = "local" })
    vim.api.nvim_set_option_value("shiftwidth", 3, { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,javascript.jsx,python,reason,ruby",
  callback = function()
    vim.api.nvim_set_option_value("expandtab", true, { scope = "local" })
    vim.api.nvim_set_option_value("tabstop", 2, { scope = "local" })
    vim.api.nvim_set_option_value("softtabstop", 2, { scope = "local" })
    vim.api.nvim_set_option_value("shiftwidth", 2, { scope = "local" })
  end,
})

local keymap = vim.api.nvim_set_keymap

-- coc mappings
-- for typescript do:  `:CocInstall coc-tsserver`
keymap('n', '<leader>d', '<plug>(coc-definition)', {})
keymap('n', '<leader>r', '<plug>(coc-references-used)', {})

-- remap <cr> to make it confirm CoC completion
keymap('i', '<CR>', "coc#pum#visible() ? coc#pum#confirm() : '<CR>'", { noremap = true, expr = true })
-- select the first completion item and confirm the completion when no item has been selected
keymap('i', '<CR>', "coc#pum#visible() ? coc#_select_confirm() : '<C-g>u<CR>'", { noremap = true, expr = true, silent = true })

-- fzf mappings
keymap('n', '<leader>b', ':Buffers<CR>', { silent = true })
