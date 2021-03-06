source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/functions.vim

" Themes
source ~/.config/nvim/themes/syntax.vim
" source ~/.config/nvim/themes/nvcode.vim
" source ~/.config/nvim/themes/ayu.vim
source ~/.config/nvim/themes/molokai.vim
" source ~/.config/nvim/themes/gruvbox.vim
  source ~/.config/nvim/plug-config/snipit.vim
  " source ~/.config/nvim/keys/which-key.vim
  source ~/.config/nvim/plug-config/undotree.vim
  source ~/.config/nvim/plug-config/carbon.vim

  " Plugin Configuration
  source ~/.config/nvim/plug-config/rnvimr.vim
  source ~/.config/nvim/plug-config/codi.vim
  source ~/.config/nvim/plug-config/easymotion.vim
  source ~/.config/nvim/plug-config/goyo.vim
  source ~/.config/nvim/plug-config/vim-rooter.vim
  source ~/.config/nvim/plug-config/start-screen.vim
  source ~/.config/nvim/plug-config/gitgutter.vim
  source ~/.config/nvim/plug-config/git-messenger.vim
  source ~/.config/nvim/plug-config/closetags.vim
  source ~/.config/nvim/plug-config/floaterm.vim
  source ~/.config/nvim/plug-config/barbar.vim
  source ~/.config/nvim/plug-config/far.vim
  source ~/.config/nvim/plug-config/tagalong.vim
  source ~/.config/nvim/plug-config/markdown-preview.vim
  source ~/.config/nvim/plug-config/nvimtree-config.vim
  source ~/.config/nvim/plug-config/lightbulb.vim
  source ~/.config/nvim/lua/lsp-wrapper.vim
  source ~/.config/nvim/plug-config/lsp-config.vim
  luafile ~/.config/nvim/lua/plugins/galaxyline-config.lua
  luafile ~/.config/nvim/lua/plugins/nvimtree-config.lua
  luafile ~/.config/nvim/lua/plugins/treesitter-config.lua
  luafile ~/.config/nvim/lua/plugins/colorizer-config.lua
  luafile ~/.config/nvim/lua/plugins/telescope-config.lua
  luafile ~/.config/nvim/lua/lsp/lsp-kind.lua
  luafile ~/.config/nvim/lua/plugins/compe-config.lua
  luafile ~/.config/nvim/lua/lsp/json-ls.lua
  luafile ~/.config/nvim/lua/lsp/vim-ls.lua
  luafile ~/.config/nvim/lua/lsp/yaml-ls.lua
  luafile ~/.config/nvim/lua/lsp/python-ls.lua

  " Golang
  source ~/.config/nvim/plug-config/vim-go.vim
  source ~/.config/nvim/lua/lsp/golang.lua

  source $HOME/.config/nvim/plug-config/quickscope.vim
  " Fzf
  source ~/.config/nvim/plug-config/fzf.vim
  source ~/.config/nvim/keys/mappings.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
