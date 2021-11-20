-- General mappings
require('plugins')
require('nv-utils')
require('nv-globals')
vim.cmd('luafile ~/.config/nvim/nv-settings.lua')
-- require('config')
require('settings')
require('keymappings')
require('colorscheme')
-- require('nv-galaxyline')

-- Plugins
require('nv-compe')
require('nv-colorizer')
require('nv-nvimtree')
-- require('nvim-tree')
require('nv-treesitter')
require('nv-barbar')
require('nv-emmet')
require('nv-quickscope')
require('nv-gitsigns')
require('nv-autopairs')
-- require('nv-neogit')
require('nv-comment')
require('nv-rnvimr')
-- require('nv-telescope')
require('nv-floaterm')
require('nv-vim-rooter')
require('nv-matchup')
require('nv-lspkind')
require('nv-hop')
require('nv-gitblame')
require('nv-nvim-peekup')
require('nv-dashboard')
require('nv-dial')
require('nv-nvim-dap')
require('nv-lightbulb')
require('nv-indentline')
require('nv-bookmark')
require('snips')
require('nv-lspinstall')


-- LSP
require('lsp')
-- require('lsp.clangd')
-- require('lsp.lua-ls')
-- require('lsp.bash-ls')
-- require('lsp.js-ts-ls')
-- require('lsp.python-ls')
-- require('lsp.json-ls')
-- require('lsp.yaml-ls')
-- require('lsp.vim-ls')
-- require('lsp.graphql-ls')
-- require('lsp.css-ls')
-- require('lsp.docker-ls')
-- require('lsp.html-ls')
-- require('lsp.efm-general-ls')
-- require('lsp.virtual_text')
require('lsp.golang-ls')

-- Source config last
-- vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = nil
vim.cmd('source ~/.config/nvim/vimscript/vim-go/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')
vim.cmd('source ~/.config/nvim/vimscript/ctrlp/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/carbon/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/fzf/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/undotree/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/airline/init.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/barbar.vim')
