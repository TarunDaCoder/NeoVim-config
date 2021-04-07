local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/galaxyline.nvim'
  use 'romgrk/barbar.nvim'
  use 'sheerun/vim-polyglot'
  use 'norcalli/nvim-colorizer.lua'
  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'liuchengxu/vim-which-key'
  use 'ChristianChiarulli/dashboard-nvim'

  -- Git
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'p00f/nvim-ts-rainbow'
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use 'nvim-treesitter/playground'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'windwp/nvim-ts-autotag'

  -- Colorscheme
  use 'christianchiarulli/nvcode-color-schemes.vim'
end)
