vim.api.nvim_create_autocmd({ "FocusGained" }, {
	pattern = "*",
	command = "hi! link Visual VisualActive",
})

vim.api.nvim_create_autocmd({ "FocusLost" }, {
	pattern = "*",
	command = "hi! link Visual VisualInactive",
})
