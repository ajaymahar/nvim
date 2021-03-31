vim.cmd('let g:nvcode_termcolors=256')

vim.cmd('syntax enable')
vim.cmd('syntax on')
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1

vim.cmd('set background=dark')
vim.cmd('set number')
vim.cmd('set laststatus=2')
vim.cmd('set t_Co=256')
vim.cmd('set termguicolors')
vim.cmd('colorscheme ' .. O.colorscheme)
