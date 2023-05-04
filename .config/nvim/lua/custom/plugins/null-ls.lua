-- null-ls.lua
--
-- Set up null-ls
-- Supports formatting and diagnostics via LSP

return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier.with {
          only_local = "node_modules/.bin"
        },
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.shellcheck,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end
}

-- vim: ts=2 sts=2 sw=2 et
