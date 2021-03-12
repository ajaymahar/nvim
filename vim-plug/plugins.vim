" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Change dates fast
    Plug 'tpope/vim-speeddating'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting
    Plug 'suy/vim-context-commentstring'
    " While I'm learning Lua
    Plug 'nanotee/nvim-lua-guide'
    Plug 'rafcamlet/nvim-luapad'

  if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else

    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    Plug 'p00f/nvim-ts-rainbow'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    " Ranger
    Plug 'kevinhwang91/rnvimr'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " Find and replace
    Plug 'brooth/far.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-media-files.nvim'
    " Intellisense
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'kosayoda/nvim-lightbulb'
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'mfussenegger/nvim-dap'
    " https://github.com/mhartington/formatter.nvim look into this
    " File Explorer
    Plug 'kyazdani42/nvim-tree.lua'
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Neovim in Browser
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
    " Webdev
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " live server
    Plug 'turbio/bracey.vim'
    " Better quickfix
    Plug 'kevinhwang91/nvim-bqf'

    " New Addedkjkj
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " FZF vim router
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " vim--sourround
    Plug 'tpope/vim-surround'

    " Undotree
    Plug 'mbbill/undotree'

    "snippets
    Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'

    " codi
    Plug 'metakirby5/codi.vim'

    " gruvbox theam
    Plug 'morhetz/gruvbox'

    " molokai theme
    Plug 'fatih/molokai'

    " crtlp fzf files finder
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    " Vim Wiki
    Plug 'https://github.com/vimwiki/vimwiki.git'

    " carbon plugin to create post images from vim
    Plug 'kristijanhusak/vim-carbon-now-sh'

    " Plugin for split and join the code block
    Plug 'https://github.com/AndrewRadev/splitjoin.vim.git'

    " Tagbar plugin for batter view the class and methods
    Plug 'preservim/tagbar'

    " Dash for searching doc
    Plug 'rizzatti/dash.vim'

    Plug 'https://github.com/lifepillar/vim-gruvbox8'
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
