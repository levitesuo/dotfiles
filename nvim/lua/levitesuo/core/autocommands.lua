local timeout_augroup = vim.api.nvim_create_augroup("timeoutlen", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", {
	group = timeout_augroup,
	callback = function()
		vim.opt.timeoutlen = 50
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	group = timeout_augroup,
	callback = function()
		vim.opt.timeoutlen = 1000
	end,
})
