-- flutter.lua
--
-- Set up flutter dev tools

return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = true,
}

-- vim: ts=2 sts=2 sw=2 et
