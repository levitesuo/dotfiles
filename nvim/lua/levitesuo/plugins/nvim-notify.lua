return {

	"rcarriga/nvim-notify",
	config = function()
		notify = require("notify").setup({
			background_colour = "#000000",
			opacity = 0,
			fps = 120,
			render = "compact",
			minimum_width = 50,
			max_width = 50,
			max_height = 1,
			timeout = 100,
		})
		vim.notify = require("notify")
		vim.keymap.set("n", "<leader>n", ":Telescope notify<CR>")
	end,
}
