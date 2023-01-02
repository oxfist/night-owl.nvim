
local c = require('nightowl.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- highlights
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "SignColumn", { fg = 'NONE', bg = c.bg })
  hl(0, "CursorLineNr", { fg = c.line_number_active_fg, bg = 'NONE' })
  hl(0, "LineNr", { fg = c.line_number_fg, bg = 'NONE' })
  hl(0, "Comment", { fg = c.dark_cyan, bg = 'NONE', italic=true, })
  hl(0, "DiffAdd", { fg = c.bg, bg = c.sign_add })
  hl(0, "DiffChange", { fg = c.bg, bg = c.sign_change, underline=true, })
  hl(0, "DiffDelete", { fg = c.bg, bg = c.sign_delete })
  hl(0, "Cursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "lCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "CursorIM", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursor", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = 'NONE' })
  hl(0, "String", { fg = c.light_orange, bg = 'NONE' })
  hl(0, "Number", { fg = c.orange, bg = 'NONE' })
  hl(0, "Boolean", { fg = c.red, bg = 'NONE', italic=true, })
  hl(0, "Function", { fg = c.blue, bg = 'NONE', italic=true, })
  hl(0, "Operator", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Keyword", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Statement", { fg = c.magenta, bg = 'NONE', italic=true, })
  hl(0, "Special", { fg = c.orange2, bg = 'NONE' })
  hl(0, "Delimiter", { fg = c.fg, bg = 'NONE' })

  -- Treesitter
  hl(0, "@keyword.return", { link = 'Statement' })
  hl(0, "@keyword.operator", { fg = c.cyan2, bg = 'NONE' })
  hl(0, "@variable.builtin", { fg = c.cyan2, bg = 'NONE' })
  hl(0, "@parameter", { fg = c.parameter, bg = 'NONE' })

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
  hl(0, "IndentBlanklineChar", { fg = c.indent_guide, bg = 'NONE' })
  hl(0, "IndentBlanklineContextChar", { fg = c.indent_guide_active, bg = 'NONE' })

  -- Dashboard

  -- Cmp
end

return theme