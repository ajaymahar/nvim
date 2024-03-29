-- General mappings
require('plugins')
require('nv-utils')
require('nv-globals')
vim.cmd('luafile ~/.config/nvim/nv-settings.lua')
require('settings')
require('keymappings')
require('colorscheme')

-- Plugins
require('nv-compe')
require('nv-colorizer')
-- require("nvim-tree").setup({
--   on_attach = on_attach,
-- })
require('nv-nvimtree')
require('nv-treesitter')
require('nv-quickscope')
require('nv-gitsigns')
require('nv-autopairs')
require('nv-comment')
require('nv-floaterm')
require('nv-matchup')
-- require('nv-lspkind')
require('nv-hop')
require('nv-gitblame')
require('nv-dashboard')
require('nv-nvim-dap')
require('nv-indentline')
require('nv-bookmark')
require('snips')
require('nv-todo')


-- LSP
require('lsp')
require('lsp.golang-ls')

-- Source config last
vim.cmd('source ~/.config/nvim/vimscript/vim-go/init.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')
vim.cmd('source ~/.config/nvim/vimscript/ctrlp/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/carbon/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/fzf/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/undotree/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/airline/init.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/barbar.vim')
