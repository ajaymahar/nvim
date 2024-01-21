local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

    -- Packer can manage itself as an optional plugin
     'wbthomason/packer.nvim',

     'nanotee/nvim-lua-guide',

     'norcalli/nvim_utils',

    -- LSP
     'neovim/nvim-lspconfig',
     'glepnir/lspsaga.nvim',
     'onsails/lspkind-nvim',
     'kosayoda/nvim-lightbulb',

    -- Debugging
     'mfussenegger/nvim-dap',

    -- Autocomplete
     'hrsh7th/nvim-compe',
	 "rafamadriz/friendly-snippets",

     -- Treesitter
 	 {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
     'nvim-treesitter/nvim-treesitter-refactor',
     'nvim-treesitter/playground', 
     'p00f/nvim-ts-rainbow',
	 'JoosepAlviste/nvim-ts-context-commentstring',

    -- Icons
     'kyazdani42/nvim-web-devicons',
     'ryanoasis/vim-devicons',

     'romgrk/barbar.nvim',
	 'vim-airline/vim-airline',
	 'morhetz/gruvbox',
	 'AlexvZyl/nordic.nvim',
	 'romgrk/doom-one.vim',
    'Rigellute/shades-of-purple.vim' ,
    'bluz71/vim-nightfly-guicolors',
  --  Telescope,
     'nvim-lua/popup.nvim',
     'nvim-lua/plenary.nvim',
	{
   	 'kyazdani42/nvim-tree.lua',
   	 dependencies = 'kyazdani42/nvim-web-devicons',
	} ,

-- TODO-plugin
	{
  		"folke/todo-comments.nvim",
  		dependencies = "nvim-lua/plenary.nvim",
	},

    -- Color
     'christianchiarulli/nvcode-color-schemes.vim',
     'norcalli/nvim-colorizer.lua',
     'sheerun/vim-polyglot',

    -- Git
     'TimUntersberger/neogit',
     {'lewis6991/gitsigns.nvim', dependencies = {'nvim-lua/plenary.nvim'}},
     'f-person/git-blame.nvim',
     'tpope/vim-fugitive',
     'tpope/vim-rhubarb',

    -- Easily Create Gists
     'mattn/vim-gist',
     'mattn/webapi-vim',

	-- find and replace for neovim
	 'brooth/far.vim',
    -- Webdev
     'windwp/nvim-ts-autotag',
     'turbio/bracey.vim',

	 'AndrewRadev/splitjoin.vim',

    -- Navigation
     'unblevable/quick-scope',
     'phaazon/hop.nvim',
     'kevinhwang91/rnvimr',

    -- General Plugins
     'liuchengxu/vim-which-key',
     'kevinhwang91/nvim-bqf',
     'ChristianChiarulli/dashboard-nvim',
     'metakirby5/codi.vim',
     'psliwka/vim-smoothie',
     'moll/vim-bbye',
     {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'},
     'voldikss/vim-floaterm',
     'liuchengxu/vista.vim',
     'terrortylor/nvim-comment',
     'bfredl/nvim-miniyank',
     'junegunn/goyo.vim',
     'andymass/vim-matchup',
     'cohama/lexima.vim',
     'MattesGroeger/vim-bookmarks',


	-- vim-go
	 {'fatih/vim-go', run = ':GoUpdateBinaries'},

	-- themes
	 'fatih/molokai',
	 'mhartington/oceanic-next',
	 'NLKNguyen/papercolor-theme',
	 'dracula/vim',
	 { "catppuccin/nvim", as = "catppuccin" },

	-- snippets
     'honza/vim-snippets' ,
	 'SirVer/ultisnips',

	-- crtlp fzf files finder
     'https://github.com/ctrlpvim/ctrlp.vim.git',

    -- " FZF vim router
     {'junegunn/fzf',  run = 'fzf#install()' },
     'junegunn/fzf.vim',


    -- " Tagbar plugin for batter view the class and methods
     'preservim/tagbar',

    -- " Undotree
     'mbbill/undotree',
	-- carbon
	 'kristijanhusak/vim-carbon-now-sh',

	 'Exafunction/codeium.vim',
	 'Exafunction/codeium.vim',

	-- Multicuror plugin
	 'mg979/vim-visual-multi',
	
	-- proto file linter works with ale
	 'bufbuild/vim-buf',
	 'dense-analysis/ale'
}

local opts = {}
require("lazy").setup(plugins, opts)
