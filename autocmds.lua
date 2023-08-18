local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd
local four_indents = 4

local function set_indent(indent)
  opt.tabstop = indent -- local to buffer
  opt.softtabstop = indent -- local to buffer
  opt.shiftwidth = indent -- local to buffer
end

autocmd("FileType", {
  pattern = { "python" },
  callback = function() set_indent(four_indents) end,
})

autocmd("FileType", {
  pattern = { "go" },
  callback = function() set_indent(four_indents) end,
})
