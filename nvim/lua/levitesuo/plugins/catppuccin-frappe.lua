return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local theme = require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			integrations = {
				treesitter = true,
			},
			custom_highlights = function(colors)
				return {
					LineNr = { fg = colors.peach },
					Cursor = { fg = colors.sky },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
