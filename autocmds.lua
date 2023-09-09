local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd

local indentation = 4

-- set indentation
autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    opt.tabstop = indentation
    opt.softtabstop = indentation
    opt.shiftwidth = indentation
  end,
})
