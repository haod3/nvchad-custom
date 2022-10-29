-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "gopls", "pyright", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
	  -- disable lsp formatting, use null-ls
	  client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
	  return on_attach(client, bufnr)
	end,
    capabilities = capabilities,
  }
end