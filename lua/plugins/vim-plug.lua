--define the plug function
local Plug = vim.fn['plug#']


-- Begin the plugin section
vim.call('plug#begin')


-- List your plugins here
-- Plug('tpope/vim-sensible')

Plug('ellisonleao/gruvbox.nvim')

Plug ('sainnhe/gruvbox-material')

Plug('altermo/ultimate-autopair.nvim')

Plug('nvim-tree/nvim-tree.lua')

Plug('nvim-treesitter/nvim-treesitter')

Plug('nvim-treesitter/playground')

Plug('nvim-lua/plenary.nvim')

Plug('nvim-telescope/telescope.nvim')

Plug('ThePrimeagen/harpoon')
Plug ('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')

Plug ('lewis6991/gitsigns.nvim')

-- Dependencies for dashboard
Plug 'nvim-tree/nvim-web-devicons'
-- Dashboard
Plug 'nvimdev/dashboard-nvim'


-- LSP

Plug('williamboman/mason.nvim')
Plug('stevearc/conform.nvim')

-- CMP

Plug ('hrsh7th/vim-vsnip')
Plug ('hrsh7th/cmp-nvim-lsp')
Plug ('hrsh7th/cmp-buffer')
Plug ('hrsh7th/cmp-path')
Plug ('hrsh7th/cmp-cmdline')
Plug ('hrsh7th/nvim-cmp')

-- DAP

Plug ('nvim-neotest/nvim-nio')
Plug ('mfussenegger/nvim-dap')
Plug ('rcarriga/nvim-dap-ui')

-- End the plugin section
vim.call('plug#end')
