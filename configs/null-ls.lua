-- custom/configs/null-ls.lua
local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = {
    formatting.gofmt,
    formatting.goimports,
    formatting.stylua,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- below 0.8, you should use vim.lsp.buf.formatting_sync() instead
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
