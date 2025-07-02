return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		event = "VeryLazy",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			panel = { enabled = false }, -- Disable the Copilot panel
			suggestion = { enabled = false, auto_trigger = false }, -- Disable the Copilot suggestion
		},

		keys = {
			{ "<leader>cc", ":CopilotChatToggle<CR>", desc = "Copilot Chat" },
			{
				"<leader>ct",
				function()
					local copilot_status = vim.b.copilot_enabled
					if copilot_status then
						vim.cmd("Copilot disable")
						vim.notify("Copilot disabled")
						vim.b.copilot_enabled = nil -- Reset the buffer-local status
					else
						vim.cmd("Copilot enable")
						vim.notify("Copilot enabled")
						vim.b.copilot_enabled = true -- Set the buffer-local status
					end
				end,
				desc = "Toggle Copilot",
			},
		},
	},
}
