require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugins
require('nvim-compe')
require('nvim-galaxyline')
require('nvim-barbar')
require('nvim-colorizer')
require('nvim-nvimtree')
require('nvim-nvim-auto-pairs')
require('nvim-comment')
require('nvim-telescope')
require('nvim-dashboard')
require('nvim-indentline')
require('nvim-gitsigns')
require('nvim-gitblame')

-- LSP
require('lsp')

-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/AppData/Local/nvim/vimscript/nvim-whichkey/init.vim')
