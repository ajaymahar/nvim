--[[ " 
--let g:nvim_tree_auto_ignore_ft = 'startify' "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
" let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
" let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }

"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath ]]
-- vim.g.nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
vim.g.nvim_tree_disable_netrw = 0 --"1 by default, disables netrw
-- vim.g.nvim_tree_hijack_netrw = 0 --"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_hide_dotfiles = 1 --0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1 --"0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_auto_close = 0 --0 by default, closes the tree when it's the last window
vim.g.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
--vim.g.nvim_tree_bindings = {
    -- mappings
 --   ["<CR>"] = tree_cb("edit"),
 --   ["l"] = tree_cb("edit"),
 --   ["o"] = tree_cb("edit"),
 --   ["<2-LeftMouse>"] = tree_cb("edit"),
 --   ["<2-RightMouse>"] = tree_cb("cd"),
 --   ["<C-c>"] = tree_cb("cd"),
 --   ["v"] = tree_cb("vsplit"),
 --   ["s"] = tree_cb("split"),
 --   ["<C-t>"] = tree_cb("tabnew"),
 --   ["h"] = tree_cb("close_node"),
 --   ["<BS>"] = tree_cb("close_node"),
 --   ["<S-CR>"] = tree_cb("close_node"),
 --   ["<Tab>"] = tree_cb("preview"),
 --   ["I"] = tree_cb("toggle_ignored"),
 --   ["."] = tree_cb("toggle_dotfiles"),
 --   ["R"] = tree_cb("refresh"),
 --   ["a"] = tree_cb("create"),
 --   ["d"] = tree_cb("remove"),
 --   ["r"] = tree_cb("rename"),
 --   ["<C-r>"] = tree_cb("full_rename"),
 --   ["x"] = tree_cb("cut"),
 --   ["c"] = tree_cb("copy"),
 --   ["p"] = tree_cb("paste"),
 --   ["[c"] = tree_cb("prev_git_item"),
 --   ["]c"] = tree_cb("next_git_item"),
 --   ["-"] = tree_cb("dir_up"),
 --   ["q"] = tree_cb("close")
--}

vim.g.nvim_tree_bindings = {
      { key = {"<CR>", "o", "<2-LeftMouse>", "l"}, cb = tree_cb("edit") },
      { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
      { key = "v",                        cb = tree_cb("vsplit") },
      { key = "s",                        cb = tree_cb("split") },
      { key = "<C-t>",                        cb = tree_cb("tabnew") },
      { key = "<",                            cb = tree_cb("prev_sibling") },
      { key = ">",                            cb = tree_cb("next_sibling") },
      { key = "P",                            cb = tree_cb("parent_node") },
      { key = "<BS>",                         cb = tree_cb("close_node") },
      { key = "h",                       cb = tree_cb("close_node") },
      { key = "<Tab>",                        cb = tree_cb("preview") },
      { key = "K",                            cb = tree_cb("first_sibling") },
      { key = "J",                            cb = tree_cb("last_sibling") },
      { key = "I",                            cb = tree_cb("toggle_ignored") },
      { key = ".",                            cb = tree_cb("toggle_dotfiles") },
      { key = "R",                            cb = tree_cb("refresh") },
      { key = "a",                            cb = tree_cb("create") },
      { key = "d",                            cb = tree_cb("remove") },
      { key = "r",                            cb = tree_cb("rename") },
      { key = "<C-r>",                        cb = tree_cb("full_rename") },
      { key = "x",                            cb = tree_cb("cut") },
      { key = "c",                            cb = tree_cb("copy") },
      { key = "p",                            cb = tree_cb("paste") },
      { key = "y",                            cb = tree_cb("copy_name") },
      { key = "Y",                            cb = tree_cb("copy_path") },
      { key = "gy",                           cb = tree_cb("copy_absolute_path") },
      { key = "[c",                           cb = tree_cb("prev_git_item") },
      { key = "]c",                           cb = tree_cb("next_git_item") },
      { key = "-",                            cb = tree_cb("dir_up") },
      { key = "s",                            cb = tree_cb("system_open") },
      { key = "q",                            cb = tree_cb("close") },
      { key = "g?",                           cb = tree_cb("toggle_help") },
    }
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = ""
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = ""
    }
}
