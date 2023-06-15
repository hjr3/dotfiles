-- copilot.lua
--
-- Set up copilot

return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end,
}

-- vim: ts=2 sts=2 sw=2 et
