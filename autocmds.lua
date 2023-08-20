local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd

local indent_length = 4

-- set indentation
autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    opt.tabstop = indent_length
    opt.softtabstop = indent_length
    opt.shiftwidth = indent_length
  end,
})
