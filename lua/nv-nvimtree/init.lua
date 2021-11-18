local tree_cb = require'nvim-tree.config'.nvim_tree_callback
 -- following options are the default
 -- each of these are documented in `:help nvim-tree.OPTION_NAME`
 require'nvim-tree'.setup {
   update_cwd          = true,
   update_to_buf_dir   = {
     enable = true,
     auto_open = true,
   },
   diagnostics = {
     enable = true,
     icons = {
       hint = "",
       info = "",
       warning = "",
       error = "",
     }
   },
   update_focused_file = {
     enable      = true,
     update_cwd  = true,
     ignore_list = {}
   },
   system_open = {
     cmd  = nil,
     args = {}
   },
   filters = {
     dotfiles = false,
     custom = {".git", "node_modules", ".cache", ".vscode", ".vs", "*.meta"}
   },
   view = {
     width = 30,
     height = 30,
     hide_root_folder = false,
     side = 'left',
     auto_resize = true,
     mappings = {
       custom_only = false,
       list = {
       { key = "o",							 cb = tree_cb("edit") },
       { key = "l",							 cb = tree_cb("cd") },
       { key = "<2-RightMouse>", 		     cb = tree_cb("cd") },
       { key = "v",                          cb = tree_cb("vsplit") },
       { key = "s",                          cb = tree_cb("split") },
       { key = "<C-t>",                        cb = tree_cb("tabnew") },
       { key = "<",                            cb = tree_cb("prev_sibling") },
       { key = ">",                            cb = tree_cb("next_sibling") },
       { key = "P",                            cb = tree_cb("parent_node") },
       { key = "h",                            cb = tree_cb("close_node") },
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
     }
   }
 }
 
 -- vim.g.nvim_tree_bindings = {
 vim.g.nvim_tree_icons = {
     default = '',
     symlink = '',
     git = {
      unstaged = "✗",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
      deleted = "",
      ignored = "◌"
      },
     folder = {
      arrow_open = "",
      arrow_closed = "",
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
      symlink_open = "",
      }
  }
