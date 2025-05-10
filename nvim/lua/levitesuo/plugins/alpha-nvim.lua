return {
	"goolord/alpha-nvim",
	config = function()
		local status_ok, alpha = pcall(require, "alpha")
		if not status_ok then
			return
		end

		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
                    .   .xXXXX+.   .
               .   ..   xXXXX+.-   ..   .   
         .   ..  ... ..xXXXX+. --.. ...  ..   .
     .   ..  ... .....xXXXX+.  -.-..... ...  ..   .
   .   ..  ... ......xXXXX+.  . .--...... ...  ..   . 
  .   ..  ... ......xXXXX+.    -.- -...... ...  ..   .
 .   ..  ... ......xXXXX+.   .-+-.-.-...... ...  ..   .
 .   ..  ... .....xXXXX+. . --xx+.-.--..... ...  ..   .
.   ..  ... .....xXXXX+. - .-xxxx+- .-- .... ...  ..   .
 .   ..  ... ...xXXXX+.  -.-xxxxxx+ .---... ...  ..   .
 .   ..  ... ..xXXXX+. .---..xxxxxx+-..--.. ...  ..   .
  .   ..  ... xXXXX+. . --....xxxxxx+  -.- ...  ..   .
   .   ..  ..xXXXX+. . .-......xxxxxx+-. --..  ..   .
     .   .. xXXXXXXXXXXXXXXXXXXXxxxxxx+. .-- ..   .
         . xXXXXXXXXXXXXXXXXXXXXXxxxxxx+.  -- .
           xxxxxxxxxxxxxxxxxxxxxxxxxxxxx+.--
            xxxxxxxxxxxxxxxxxxxxxxxxxxxxx+-   
 ]]

		dashboard.section.header.val = vim.split(logo, "\n")

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
			dashboard.button("g", "󱎸  Live grep", ":Telescope live_grep <CR>"),
			dashboard.button("s", "󰦛  Restore last session", ":SessionRestore <CR>"),
			dashboard.button("m", "  Mason menu", ":Mason <CR>"),
			dashboard.button("l", "󰏖  Lazy menu", ":Lazy <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/lua/levitesuo/<CR>"),
			dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
		}

		local function footer()
			return "Don't Stop Until You are Proud..."
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		dashboard.opts.layout[1].val = 8
		alpha.setup(dashboard.opts)

		vim.keymap.set("n", "<leader>a", ":Alpha <CR>")
	end,
}
