local palette = require("night-owl.palette")

local theme = {}

local function hl(id, name, def)
	vim.api.nvim_set_hl(id, name, def)
end

function theme.set_highlights(settings)
	local background_color = settings.transparent_background and "NONE" or palette.bg

	-- highlights
	hl(0, "Normal", { fg = palette.fg, bg = background_color })
	hl(0, "SignColumn", { fg = "NONE", bg = palette.bg })
	hl(0, "Pmenu", { fg = "NONE", bg = palette.dark })
	hl(0, "PmenuSel", { fg = "NONE", bg = palette.quickfix_line })
	hl(0, "Comment", { fg = palette.dark_cyan, bg = "NONE", italic = settings.italics })
	hl(0, "Folded", { fg = palette.dark_cyan, bg = palette.folded_bg })
	hl(0, "FoldColumn", { fg = palette.dark_cyan, bg = palette.bg })
	hl(0, "FloatBorder", { fg = palette.light_purple, bg = palette.bg })
	hl(0, "FloatTitle", { fg = palette.purple, bg = palette.bg, bold = settings.bold })
	hl(0, "Whitespace", { fg = palette.blue14, bg = "NONE" })
	hl(0, "VertSplit", { fg = palette.gray, bg = "NONE" })
	hl(0, "LineNr", { fg = palette.line_number_fg, bg = "NONE" })
	hl(0, "CursorLineNr", { fg = palette.line_number_active_fg, bg = "NONE" })
	hl(0, "CursorLine", { fg = "NONE", bg = palette.dark2 })
	hl(0, "CursorColumn", { fg = "NONE", bg = palette.cursor_bg })
	hl(0, "lCursor", { fg = palette.cursor_fg, bg = palette.cursor_bg })
	hl(0, "Cursor", { fg = palette.cursor_fg, bg = palette.cursor_bg })
	hl(0, "CursorIM", { fg = palette.cursor_fg, bg = palette.cursor_bg })
	hl(0, "TermCursor", { fg = palette.cursor_fg, bg = palette.cursor_bg })
	hl(0, "ColorColumn", { fg = "NONE", bg = palette.dark2 })
	hl(0, "NormalFloat", { fg = "NONE", bg = palette.bg, sp = "NONE", blend = 0 })
	hl(0, "Visual", { link = "@nowl.visual.active" })
	hl(0, "DiffAdd", { fg = palette.bg, bg = palette.sign_add })
	hl(0, "DiffChange", { fg = palette.bg, bg = palette.sign_change, underline = settings.underline })
	hl(0, "DiffDelete", { fg = palette.bg, bg = palette.sign_delete })
	hl(0, "QuickFixLine", { fg = "NONE", bg = palette.quickfix_line })
	hl(0, "MatchParen", { fg = "NONE", bg = palette.match_paren, sp = "NONE" })
	hl(0, "Conceal", { fg = palette.ui_border2, bg = "NONE" })
	hl(0, "Directory", { fg = palette.blue, bg = "NONE" })
	hl(0, "Title", { fg = palette.title, bg = "NONE", bold = settings.bold })
	hl(0, "ErrorMsg", { link = "Error" })
	hl(0, "Search", { fg = "NONE", bg = palette.search_blue })
	hl(0, "IncSearch", { fg = "NONE", bg = palette.incremental_search_blue })
	hl(0, "NonText", { fg = palette.gray6, bg = "NONE" })
	hl(0, "Variable", { fg = palette.parameter, bg = "NONE" })
	hl(0, "String", { fg = palette.light_orange, bg = "NONE" })
	hl(0, "Constant", { fg = palette.blue, bg = "NONE", italic = settings.italics })
	hl(0, "Number", { fg = palette.orange, bg = "NONE" })
	hl(0, "Boolean", { fg = palette.red, bg = "NONE", italic = settings.italics })
	hl(0, "Identifier", { fg = palette.light_blue, bg = "NONE" })
	hl(0, "Function", { fg = palette.blue, bg = "NONE", italic = settings.italics })
	hl(0, "Operator", { fg = palette.magenta, bg = "NONE" })
	hl(0, "Type", { fg = palette.orange2, bg = "NONE" })
	hl(0, "Keyword", { fg = palette.magenta, bg = "NONE" })
	hl(0, "Statement", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "Conditional", { fg = palette.magenta, bg = "NONE" })
	hl(0, "Include", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "PreProc", { fg = palette.magenta4, bg = "NONE" })
	hl(0, "Special", { fg = palette.orange2, bg = "NONE" })
	hl(0, "Tag", { fg = palette.light_cyan, bg = "NONE" })
	hl(0, "Delimiter", { fg = palette.fg, bg = "NONE" })
	hl(0, "Error", { fg = palette.error_red, bg = "NONE" })
	hl(0, "TabLineSel", { fg = palette.gray2, bg = palette.tab_active_bg })
	hl(0, "TabLine", { fg = palette.ui_border, bg = palette.tab_inactive_bg })
	hl(0, "TabLineFill", { fg = palette.bg, bg = "NONE" })

	-- NightOwl
	hl(0, "@nowl.visual.active", { fg = "NONE", bg = palette.visual })
	hl(0, "@nowl.visual.inactive", { fg = "NONE", bg = palette.dark_purple })
	hl(0, "@nowl.indentChar", { fg = palette.indent_guide, bg = "NONE", nocombine = true })
	hl(0, "@nowl.indentChar.active", { fg = palette.indent_guide_active, bg = "NONE", nocombine = true })

	-- Treesitter
	hl(0, "@class.constructor", { fg = palette.blue, bg = "NONE", italic = settings.italics })
	hl(0, "@class.field.function", { link = "Function" })
	hl(0, "@type", { fg = palette.orange2, bg = "NONE", italic = settings.italics })
	hl(0, "@type.class", { fg = palette.orange2, bg = "NONE", nocombine = true })
	hl(0, "@type.inheritedClass", { fg = palette.green, bg = "NONE", nocombine = true })
	hl(0, "@type.toml", { fg = palette.green, bg = "NONE", italic = settings.italics })
	hl(0, "tomlTable", { fg = palette.green, bg = "NONE", italic = settings.italics })
	hl(0, "@type.builtin", { fg = palette.green, bg = "NONE" })
	hl(0, "@include.identifier", { fg = palette.fg, bg = "NONE", nocombine = true })
	hl(0, "@keyword", { link = "Keyword" })
	hl(0, "@keyword.if.vim", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.return", { link = "Statement" })
	hl(0, "@keyword.return.vim", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.export", { link = "Statement" })
	hl(0, "@keyword.function.lua", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.function.vim", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.function.return", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.abort", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@keyword.default", { link = "Statement" })
	hl(0, "@keyword.static", { link = "Statement" })
	hl(0, "@keyword.extends", { link = "Statement" })
	hl(0, "@keyword.coroutine", { link = "Statement" })
	hl(0, "@keyword.operator", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@keyword.jsdoc", { fg = palette.magenta, bg = "NONE", nocombine = true })
	hl(0, "@keyword.command", { fg = palette.green, bg = "NONE", nocombine = true })
	hl(0, "@command", { fg = palette.green, bg = "NONE", nocombine = true })
	hl(0, "@label", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@namespace.vim", { fg = palette.light_blue, bg = "NONE", italic = settings.italics })
	hl(0, "@conditional.lua", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@constant", { link = "Constant" })
	hl(0, "@constant.identifier", { link = "Constant" })
	hl(0, "@constant.builtin", { link = "Constant" })
	hl(0, "@constant.builtin.null", { fg = palette.red, bg = "NONE" })
	hl(0, "@constructor.javascript", { fg = palette.blue, bg = "NONE", nocombine = true })
	hl(0, "@variable", { fg = palette.parameter, bg = "NONE" })
	hl(0, "@variable.builtin", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@variable.builtin.vim", { fg = palette.cyan2, bg = "NONE", italic = settings.italics })
	hl(0, "@variable.object", { fg = palette.cyan2, bg = "NONE", italic = settings.italics })
	hl(0, "@variable.lua", { link = "Variable" })
	hl(0, "@variable.vim", { link = "Variable" })
	hl(0, "@property", { fg = palette.cyan5, bg = "NONE" })
	hl(0, "tomlKey", { fg = palette.magenta, bg = "NONE", nocombine = true })
	hl(0, "@property.toml", { fg = palette.magenta, bg = "NONE", nocombine = true })
	hl(0, "tomlKeySq", { fg = palette.magenta, bg = "NONE", nocombine = true })
	hl(0, "@object.property", { fg = palette.light_yellow, bg = "NONE", italic = settings.italics })
	hl(0, "@object.key", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@field", { fg = palette.cyan5, bg = "NONE" })
	hl(0, "@parameter", { fg = palette.parameter, bg = "NONE" })
	hl(0, "@parameter.jsdoc", { fg = palette.light_blue, bg = "NONE" })
	hl(0, "@text.literal", { fg = palette.green, bg = "NONE" })
	hl(0, "@text.uri", { fg = palette.light_red, bg = "NONE", underline = settings.underline })
	hl(0, "@text.emphasis", { fg = palette.magenta, bg = "NONE", italic = settings.italics })
	hl(0, "@text.strong", { fg = palette.green, bg = "NONE", bold = settings.bold })
	hl(0, "@text.todo", { fg = palette.bg, bg = palette.fg })
	hl(0, "@operator.lua", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@operator.toml", { fg = palette.fg, bg = "NONE" })
	hl(0, "@operator.of", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@tag.component.jsx", { fg = palette.orange, bg = "NONE", nocombine = true })
	hl(0, "@tag.delimiter", { fg = palette.cyan2, bg = "NONE" })
	hl(0, "@tag.attribute", { fg = palette.green, bg = "NONE", italic = settings.italics })
	hl(0, "@punctuation.string.delimiter", { fg = palette.string_delimiter, bg = "NONE", nocombine = true })
	hl(0, "@punctuation.accessor", { link = "Statement" })
	hl(0, "@string.json", { fg = palette.magenta2, bg = "NONE" })
	hl(0, "@string.regex", { fg = palette.blue, bg = "NONE", nocombine = true })
	hl(0, "@string.regexFlags", { fg = palette.blue8, bg = "NONE", nocombine = true })
	hl(0, "@function.builtin.lua", { fg = palette.blue, bg = "NONE", italic = settings.italics })

	-- Whichkey

	-- Git
	hl(0, "GitSignsAdd", { fg = palette.sign_add, bg = "NONE" })
	hl(0, "GitSignsChange", { fg = palette.sign_change, bg = "NONE" })
	hl(0, "GitSignsDelete", { fg = palette.sign_delete, bg = "NONE" })
	hl(0, "GitSignsChangedelete", { fg = palette.sign_change, bg = "NONE" })
	hl(0, "GitSignsCurrentLineBlame", { fg = palette.gray3, bg = "NONE" })
	hl(0, "GitGutterAdd", { fg = palette.sign_add, bg = "NONE" })
	hl(0, "GitGutterChange", { fg = palette.sign_change, bg = "NONE" })
	hl(0, "GitGutterDelete", { fg = palette.sign_delete, bg = "NONE" })
	hl(0, "GitGutterChangeDelete", { fg = palette.sign_change, bg = "NONE" })

	-- LSP
	hl(0, "DiagnosticError", { link = "Error" })
	hl(
		0,
		"DiagnosticUnderlineError",
		{ fg = "NONE", bg = "NONE", sp = palette.error_red, undercurl = settings.undercurl }
	)
	hl(0, "LspInfoBorder", { fg = palette.ui_border, bg = "NONE" })
	hl(0, "LspInlayHint", { fg = palette.gray5, bg = palette.blue13 })

	-- SemanticTokens
	hl(0, "@lsp.type.parameter", { fg = palette.parameter, bg = "NONE" })
	hl(0, "@lsp.type.property", { fg = palette.cyan5, bg = "NONE" })
	hl(0, "@lsp.type.variable", { fg = palette.parameter, bg = "NONE" })
	hl(0, "@lsp.type.variable.lua", { link = "Variable" })
	hl(0, "@lsp.mod.global.lua", { fg = palette.green, bg = "NONE" })

	-- Telescope
	hl(0, "TelescopeSelection", { fg = "NONE", bg = palette.visual })
	hl(0, "TelescopeMatching", { fg = palette.nvim_tree_file, bg = "NONE", bold = settings.bold })
	hl(0, "TelescopeBorder", { fg = palette.ui_border, bg = "NONE" })

	-- NvimTree
	hl(0, "NvimTreeIndentMarker", { fg = palette.nvim_tree_indent_marker, bg = "NONE" })
	hl(0, "NvimTreeNormal", { fg = palette.dark_white, bg = "NONE" })
	hl(0, "NvimTreeNormalNC", { fg = palette.ui_border, bg = "NONE" })
	hl(0, "NvimTreeSpecialFile", { fg = palette.orange, bg = "NONE" })
	hl(0, "NvimTreeOpenedFile", { fg = "NONE", bg = "NONE", bold = settings.bold })
	hl(0, "NvimTreeImageFile", { fg = palette.nvim_tree_file, bg = "NONE" })
	hl(0, "NvimTreeCursorLine", { fg = "NONE", bg = palette.quickfix_line })
	hl(0, "NvimTreeGitStaged", { fg = palette.sign_change, bg = "NONE" })
	hl(0, "NvimTreeGitNew", { fg = palette.green, bg = "NONE" })
	hl(0, "NvimTreeGitRenamed", { fg = palette.sign_add, bg = "NONE" })
	hl(0, "NvimTreeGitDeleted", { fg = palette.sign_delete, bg = "NONE" })
	hl(0, "NvimTreeGitDirty", { fg = palette.changed, bg = "NONE" })
	hl(0, "NvimTreeRootFolder", { fg = palette.magenta, bg = "NONE" })
	hl(
		0,
		"NvimTreeWindowPicker",
		{ fg = palette.orange2, bg = palette.dark, bold = settings.bold, italic = settings.italics }
	)

	-- Buffer

	-- StatusLine

	-- IndentBlankline
	hl(0, "IndentBlanklineChar", { link = "@nowl.indentChar" })
	hl(0, "IndentBlanklineContextChar", { link = "@nowl.indentChar.active" })
	hl(0, "IndentBlanklineSpaceChar", { link = "Whitespace" })
	hl(0, "IndentBlanklineSpaceCharBlankline", { link = "Whitespace" })
	hl(
		0,
		"IndentBlanklineContextStart",
		{ fg = "NONE", bg = "NONE", sp = palette.indent_guide_active, underline = settings.underline }
	)

	-- IndentBlankline-v3
	hl(0, "IblIndent", { link = "@nowl.indentChar" })
	hl(0, "IblScope", { link = "@nowl.indentChar.active" })
	hl(0, "IblWhitespace", { link = "Whitespace" })

	-- Illuminate
	hl(0, "IlluminatedWordText", { fg = "NONE", bg = palette.word_highlight })
	hl(0, "IlluminatedWordRead", { fg = "NONE", bg = palette.word_highlight })
	hl(0, "IlluminatedWordWrite", { fg = "NONE", bg = palette.word_highlight_write })

	-- DevIcons
	hl(0, "DevIconLua", { fg = palette.purple3, bg = "NONE" })
	hl(0, "DevIconTxt", { fg = palette.green2, bg = "NONE" })
	hl(0, "DevIconScheme", { fg = palette.magenta, bg = "NONE" })

	-- RainbowDelimiters
	hl(0, "RainbowDelimiterRed", { fg = palette.red, bg = "NONE" })
	hl(0, "RainbowDelimiterYellow", { fg = palette.light_orange, bg = "NONE" })
	hl(0, "RainbowDelimiterBlue", { fg = palette.blue, bg = "NONE" })
	hl(0, "RainbowDelimiterOrange", { fg = palette.orange, bg = "NONE" })
	hl(0, "RainbowDelimiterGreen", { fg = palette.green, bg = "NONE" })
	hl(0, "RainbowDelimiterViolet", { fg = palette.magneta, bg = "NONE" })
	hl(0, "RainbowDelimiterCyan", { fg = palette.cyan2, bg = "NONE" })
end

return theme
