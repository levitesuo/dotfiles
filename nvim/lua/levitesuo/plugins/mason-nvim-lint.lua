return {
	"rshkarin/mason-nvim-lint",
	dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-lint" },
	config = function()
		local lint = require("lint")

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })

		require("mason-nvim-lint").setup({})
	end,
}
