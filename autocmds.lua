local opt = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd
local indent_length = 4

local function set_indent(indent)
  opt.tabstop = indent
  opt.softtabstop = indent
  opt.shiftwidth = indent
end

-- filetype that should be changed its indentation
local should_change_indent = {
  "go",
  "java",
  "python",
}

-- set indentation
autocmd("FileType", {
  pattern = should_change_indent,
  callback = function() set_indent(indent_length) end,
})
