-- copilot.lua
--
-- Set up Github copilot
-- Supports formatting and diagnostics via LSP
-- https://www.reddit.com/r/neovim/comments/11ci5ik/copilot_is_no_longer_a_nuisance_for_me/

return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true

    local map = vim.keymap.set
    --map('i', '[[', '<Plug>(copilot-next)', {})
    --map('i', ']]', '<Plug>(copilot-previous)', {})
    -- tab still works due to cmp (somehow?)
    map('i', '^^', 'copilot#Accept("<CR>")', { silent = true, expr = true })

    vim.g.copilot_filetypes = {
      ["*"] = false,
      ["javascript"] = true,
      ["typescript"] = true,
      ["lua"] = false,
      ["rust"] = true,
    }
  end,
}

-- vim: ts=2 sts=2 sw=2 et
