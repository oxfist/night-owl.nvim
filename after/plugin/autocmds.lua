local colorscheme = vim.api.nvim_exec2("colorscheme", { output = true })

if vim.deep_equal(colorscheme.output, "night-owl") then
	vim.api.nvim_create_autocmd("FocusGained", {
		pattern = "*",
		command = "hi! link Visual VisualActive",
	})

	vim.api.nvim_create_autocmd("FocusLost", {
		pattern = "*",
		command = "hi! link Visual VisualInactive",
	})
end
