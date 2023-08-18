local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd
local indent_length = 4

local function set_indent(indent)
  opt.tabstop = indent
  opt.softtabstop = indent
  opt.shiftwidth = indent
end

-- set indentation
autocmd("FileType", {
  pattern = { "python", "go" },
  callback = function() set_indent(indent_length) end,
})
