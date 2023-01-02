
local c = require('nightowl.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- highlights
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "SignColumn", { fg = 'NONE', bg = c.bg })
  hl(0, "CursorLineNr", { fg = c.line_number_active_fg, bg = 'NONE' })
  hl(0, "LineNr", { fg = c.line_number_fg, bg = 'NONE' })
  hl(0, "DiffAdd", { fg = c.bg, bg = c.sign_add })
  hl(0, "DiffChange", { fg = c.bg, bg = c.sign_change, underline=true, })
  hl(0, "DiffDelete", { fg = c.bg, bg = c.sign_delete })
  hl(0, "Cursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "lCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "CursorIM", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "Number", { fg = c.orange, bg = 'NONE' })
  hl(0, "Boolean", { fg = c.red, bg = 'NONE', italic=true, })
  hl(0, "Keyword", { fg = c.magenta, bg = 'NONE' })

  -- Treesitter

  -- markdown

  -- Whichkey

  -- Git
  hl(0, "GitGutterAdd", { fg = c.sign_add, bg = 'NONE' })
  hl(0, "GitGutterChange", { fg = c.sign_change, bg = 'NONE' })
  hl(0, "GitGutterDelete", { fg = c.sign_delete, bg = 'NONE' })
  hl(0, "GitGutterChangeDelete", { fg = c.sign_change, bg = 'NONE' })

  -- LSP

  -- Telescope

  -- NvimTree

  -- Buffer

  -- StatusLine

  -- IndentBlankline

  -- Dashboard

  -- Cmp
end

return theme