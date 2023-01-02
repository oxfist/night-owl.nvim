
local c = require('nightowl.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- highlights
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "CursorLineNr", { fg = c.line_number_active_fg, bg = 'NONE' })
  hl(0, "LineNr", { fg = c.line_number_fg, bg = 'NONE' })
  hl(0, "Cursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "lCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "CursorIM", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = 'NONE' })

  -- Treesitter

  -- markdown

  -- Whichkey

  -- Git

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