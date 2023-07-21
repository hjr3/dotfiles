-- ale.lua
--
-- Set up ALE

return {
  'dense-analysis/ale',
  config = function()
    -- Lint when your file is saved. Current linters only support files on disk.
    vim.g.ale_lint_on_save = 1
    vim.g.ale_lint_on_text_changed = 0
    vim.g.ale_fix_on_save = 1
    vim.g.ale_linters = {
      rust = { 'cargo' },
      javascript = { 'eslint' },
      typescript = { 'eslint', 'tsserver' },
      typescriptreact = { 'eslint', 'tsserver' },
      bash = { 'shellcheck' },
    }
    vim.g.ale_fixers = {
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
    }
    vim.g.ale_type_map = {
      eslint = { E = 'ES', W = 'WS' }
    }

    vim.g.ale_sign_error = '✘'
    vim.g.ale_sign_warning = '⚠'
    vim.g.ale_sign_style_error = '>>'
    vim.g.ale_sign_style_warning = '--'
    vim.api.nvim_command('highlight ALEErrorSign ctermbg=NONE ctermfg=red')
    vim.api.nvim_command('highlight ALEWarningSign ctermbg=NONE ctermfg=yellow')
    vim.api.nvim_command('highlight ALEStyleErrorSign ctermbg=NONE ctermfg=darkyellow')
    vim.api.nvim_command('highlight ALEStyleWarningSign ctermbg=NONE ctermfg=yellow')
  end
}

-- vim: ts=2 sts=2 sw=2 et
