local colorscheme = vim.api.nvim_exec2("colorscheme", { output = true })

if vim.deep_equal(colorscheme.output, "night-owl") then
	vim.api.nvim_create_autocmd("FocusGained", {
		pattern = "*",
		command = "hi! link Visual @nowl.visual.active",
	})

	vim.api.nvim_create_autocmd("FocusLost", {
		pattern = "*",
		command = "hi! link Visual @nowl.visual.inactive",
	})
end
