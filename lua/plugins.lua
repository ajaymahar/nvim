-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- Information
    use 'nanotee/nvim-lua-guide'

    -- Quality of life improvements
    use 'norcalli/nvim_utils'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'

    -- Debugging
    use 'mfussenegger/nvim-dap'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
	use "rafamadriz/friendly-snippets"

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/playground'
    use 'p00f/nvim-ts-rainbow'
	use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    use 'romgrk/barbar.nvim'
	use 'vim-airline/vim-airline'
	use 'morhetz/gruvbox'
	use 'romgrk/doom-one.vim'
  use 'Rigellute/shades-of-purple.vim' 
  use 'bluz71/vim-nightfly-guicolors'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
} 

-- TODO-plugin
use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
}

    -- Color
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'norcalli/nvim-colorizer.lua'
    use 'sheerun/vim-polyglot'

    -- Git
    use 'TimUntersberger/neogit'
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    -- Easily Create Gists
    use 'mattn/vim-gist'
    use 'mattn/webapi-vim'

	-- find and replace for neovim
	use 'brooth/far.vim'
    -- Webdev
    use 'windwp/nvim-ts-autotag'
   --  use 'gennaro-tedesco/nvim-jqx'
    use 'turbio/bracey.vim'

	use 'AndrewRadev/splitjoin.vim'

    -- Navigation
    use 'unblevable/quick-scope'
    use 'phaazon/hop.nvim'
    use 'kevinhwang91/rnvimr'

    -- General Plugins
    use 'liuchengxu/vim-which-key'
    use 'kevinhwang91/nvim-bqf'
    -- use 'airblade/vim-rooter'
    use 'ChristianChiarulli/dashboard-nvim'
    use 'metakirby5/codi.vim'
    use 'psliwka/vim-smoothie'
    use 'moll/vim-bbye'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
    use 'voldikss/vim-floaterm'
    use 'liuchengxu/vista.vim'
    use 'terrortylor/nvim-comment'
    use 'bfredl/nvim-miniyank'
    use 'junegunn/goyo.vim'
    use 'andymass/vim-matchup'
    use 'cohama/lexima.vim'
    use 'MattesGroeger/vim-bookmarks'


	-- vim-go
	use {'fatih/vim-go', run = ':GoUpdateBinaries'}

	-- themes
	use 'fatih/molokai'
	use 'mhartington/oceanic-next'
	use 'NLKNguyen/papercolor-theme'
	use 'dracula/vim'

	-- snippets
    use 'honza/vim-snippets' 
	use 'SirVer/ultisnips'

	-- crtlp fzf files finder
    use 'https://github.com/ctrlpvim/ctrlp.vim.git'

    -- " FZF vim router
    use {'junegunn/fzf',  run = 'fzf#install()' }
    use 'junegunn/fzf.vim'


    -- " Tagbar plugin for batter view the class and methods
    use 'preservim/tagbar'

    -- " Undotree
    use 'mbbill/undotree'
	-- carbon
	use 'kristijanhusak/vim-carbon-now-sh'

	-- use 'Exafunction/codeium.vim'
	use 'Exafunction/codeium.vim'

	use 'stephpy/vim-yaml'
end)
