local opt = vim.opt

opt.nu = true
opt.relativenumber = true
opt.numberwidth = 1

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 10

opt.clipboard:append("unnamedplus")

opt.splitbelow = true
opt.splitright = true

vim.g.copilot_enabled = 0
