local M = {}

---@class Config
local default_options = {
	bold = true,
	italics = true,
	underline = true,
	undercurl = true,
	transparent_background = false,
}

---@type Config
M.options = default_options

local function set_default_settings()
	-- For legacy vim support (TODO: need to confirm)
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.cmd("highlight clear")

	vim.opt.background = "dark"
	vim.g.colors_name = "night-owl"
	vim.opt.termguicolors = true
end

---@param options Config|nil
local function handle_user_options(options)
	return vim.tbl_deep_extend("force", {}, default_options, options or {})
end

---@param options Config|nil
local function handle_extended_options(options)
	return vim.tbl_deep_extend("force", {}, M.options or default_options, options or {})
end

---@param options Config|nil
function M.extend(options)
	M.options = handle_extended_options(options)
end

---@param options Config|nil
function M.setup(options)
	set_default_settings()
	M.options = handle_user_options(options)
end

return M
