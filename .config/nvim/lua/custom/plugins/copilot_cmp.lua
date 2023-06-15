-- copilot_cmp.lua
--
-- Set up copilot as a cmp source

return {
  "zbirenbaum/copilot-cmp",
  config = function()
    require("copilot_cmp").setup()
  end
}

-- vim: ts=2 sts=2 sw=2 et
