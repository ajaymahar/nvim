-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ajay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ajay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ajay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ajay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ajay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["bracey.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/bracey.vim"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/codi.vim"
  },
  ["ctrlp.vim.git"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/ctrlp.vim.git"
  },
  ["dash.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/dash.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["dial.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/dial.nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["java-snippets"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/java-snippets"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  molokai = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/molokai"
  },
  neogit = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lua-guide"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-lua-guide"
  },
  ["nvim-miniyank"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-miniyank"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  nvim_utils = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/nvim_utils"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  playground = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["shades-of-purple.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/shades-of-purple.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  tagbar = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  undotree = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-bookmarks"
  },
  ["vim-carbon-now-sh"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-carbon-now-sh"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gist"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-gist"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/Users/ajay/.local/share/nvim/site/pack/packer/start/webapi-vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
