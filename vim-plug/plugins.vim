" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    " Intelegence
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF vim router
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " starttify
    Plug 'mhinz/vim-startify'

    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
          
    " Sneak for searching
    Plug 'justinmk/vim-sneak'

    " vim which keys
    Plug 'liuchengxu/vim-which-key'

    " vim--sourround
    Plug 'tpope/vim-surround'

    " Undotree
    Plug 'mbbill/undotree'

    " terminal
    Plug 'voldikss/vim-floaterm'

    "snippets 
    Plug 'honza/vim-snippets'

    " codi
    Plug 'metakirby5/codi.vim'

    " gruvbox theam
    Plug 'morhetz/gruvbox'

    " crtlp fzf files finder
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    " Vim Wiki
    Plug 'https://github.com/vimwiki/vimwiki.git'

    " quick scope to find something quick in line
    Plug 'unblevable/quick-scope'
   
    " carbon plugin to create post images from vim 
    Plug 'kristijanhusak/vim-carbon-now-sh'
call plug#end()
