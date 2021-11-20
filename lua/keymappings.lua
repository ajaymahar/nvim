vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])
-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})


-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

-- closing buffer ctrl + m to close current buf
-- ctrl + c to close all except current
-- vim.cmd([[
--     nnoremap <C-x> :BufferClose<CR>
-- 	  nnoremap <C-a> :BufferCloseAllButCurrent<CR>
-- ]])

vim.api.nvim_set_keymap('n', 'J', ':BufferClose<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'L', ':BufferCloseAllButCurrent<CR>', {noremap = true, silent = true})
-- comment
vim.api.nvim_set_keymap('n', ',', ':CommentToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '/', ':CommentToggle<CR>', {noremap = true, silent = true})

-- tagbar
vim.api.nvim_set_keymap('n', '<C-t>', ':TagbarToggle<CR>', {noremap = true, silent = true})

-- undotrere
vim.api.nvim_set_keymap('n', '<Leader>u', ':UndotreeToggle<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'T', ':FloatermNew --wintype=split --position=rightbelow --height=17<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':FloatermToggle<CR>', {noremap = true, silent = true})


-- splitjoin keymapping
vim.api.nvim_set_keymap('n', 'sk', ':SplitjoinSplit<CR>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', 'sj', ':SplitjoinJoin<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'm', ':BufferPick<CR>',  {noremap = true, silent = true})
