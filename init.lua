vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.wo.colorcolumn = "120"

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "help,qf",
  callback = function()
    vim.wo.colorcolumn = "0"
  end,
})

autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.wo.colorcolumn = "0"
  end,
})

autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.o.softtabstop = 2
    vim.o.shiftwidth = 2
  end,
})
