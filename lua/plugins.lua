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
    -- use 'mfussenegger/nvim-jdtls'
    use 'kabouzeid/nvim-lspinstall'

    -- Debugging
    use 'mfussenegger/nvim-dap'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    use 'mattn/emmet-vim'
    use 'hrsh7th/vim-vsnip'
    use 'ChristianChiarulli/java-snippets'
	use "rafamadriz/friendly-snippets"
    -- use 'xabikos/vscode-javascript'
    -- use 'dsznajder/vscode-es7-javascript-react-snippets'
    -- use 'golang/vscode-go'
    -- use 'rust-lang/vscode-rust'
    -- use 'ChristianChiarulli/html-snippets'
    -- use 'ChristianChiarulli/python-snippets'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/playground'
    use 'p00f/nvim-ts-rainbow'
    -- use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
	use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Status Line and Bufferline
    -- use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'
	use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'
	use 'morhetz/gruvbox'
	use 'romgrk/doom-one.vim'
  use 'Rigellute/shades-of-purple.vim' 
  use 'bluz71/vim-nightfly-guicolors'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

   -- use {
   --    'nvim-telescope/telescope.nvim',
   --    requires = { {'nvim-lua/plenary.nvim'} }
   -- }

    -- Explorer
   -- use 'kyazdani42/nvim-tree.lua'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
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
    -- Registers
    -- use 'gennaro-tedesco/nvim-peekup'

    -- Navigation
    use 'unblevable/quick-scope'
    use 'phaazon/hop.nvim'
    use 'kevinhwang91/rnvimr'

    -- General Plugins
    use 'liuchengxu/vim-which-key'
    use 'kevinhwang91/nvim-bqf'
    use 'airblade/vim-rooter'
    use 'ChristianChiarulli/dashboard-nvim'
    use 'metakirby5/codi.vim'
    use 'psliwka/vim-smoothie'
    use 'moll/vim-bbye'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
    use 'voldikss/vim-floaterm'
    use 'liuchengxu/vista.vim'
    use 'terrortylor/nvim-comment'
    use 'bfredl/nvim-miniyank'
    use 'monaqa/dial.nvim'
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

    -- use 'kshenoy/vim-signature'
    -- use 'nelstrom/vim-visual-star-search'
	-- TODO switch back when config support snips
    -- use 'windwp/nvim-autopairs'

    -- TODO put this back when stable for indent lines
    -- vim.g.indent_blankline_space_char = ''
    -- use 'b3nj5m1n/kommentary'
    -- use {
    --     'glacambre/firenvim',
    --     run = function()
    --         vim.fn['firenvim#install'](1)
    --     end
    -- }
    -- use 'glepnir/dashboard-nvim'
    -- use 'mhinz/vim-startify'
    -- use 'cstrap/python-snippets'
    -- use 'ylcnfrht/vscode-python-snippet-pack'
    -- use 'norcalli/snippets.nvim'
    -- use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'
    -- vim.g.UltiSnipsExpandTrigger="<CR>"
    -- vim.g.UltiSnipsJumpForwardTrigger="<Tab>"
    -- vim.g.UltiSnipsJumpBackwardTrigger="<S-Tab>"
    -- use 'blackcauldron7/surround.nvim'
end)
