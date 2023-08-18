local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd
local indent_length = 4

local function set_indent(indent)
  opt.tabstop = indent
  opt.softtabstop = indent
  opt.shiftwidth = indent
end

autocmd("FileType", {
  pattern = { "python" },
  callback = function() set_indent(indent_length) end,
})

autocmd("FileType", {
  pattern = { "go" },
  callback = function() set_indent(indent_length) end,
})
