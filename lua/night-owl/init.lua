local M = {}
local theme = require('night-owl.theme')

local function handle_options(opts)
    if opts["italics"] == false then
        theme.settings.italics = false
    end
end

M.setup = function(opts)
  if opts ~= nil then
      handle_options(opts)
  end
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'night-owl'

  theme.set_highlights()
end

return M
