vim.api.nvim_set_keymap("n", ",", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "/", ":CommentToggle<CR>", {noremap=true, silent = true})
