local config = require("night-owl.config")
local theme = require("night-owl.theme")

local M = {}
M._options = nil

--- Loads the theme without going through the default activation.
function M._load()
	if not M._options then
		M._options = config.options
	end

	M.load(M._options)
end

---@param opts Config|nil
function M.load(opts)
	if opts then
		config.extend(opts)
	end
	theme.set_highlights(opts)
end

M.setup = config.setup

return M
