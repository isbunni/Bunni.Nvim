-- diable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable 24 bit color (optional)
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
