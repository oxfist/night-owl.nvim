local theme = require("night-owl.theme")

local M = {}

---@class Config
local defaults = {
	bold = true,
	italics = true,
	underline = true,
	undercurl = true,
	transparent_background = false,
}

local function set_default_settings()
	-- For legacy vim support (?)
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.cmd("highlight clear")

	vim.opt.background = "dark"
	vim.g.colors_name = "night-owl"
	vim.opt.termguicolors = true
end

---@param options Config|nil
local function handle_options(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
	set_default_settings()

	handle_options(options)

	theme.set_highlights(M.options)
end

return M
