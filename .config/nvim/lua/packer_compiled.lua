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
local package_path_str = "/home/qiqiang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/qiqiang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/qiqiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/qiqiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/qiqiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.autosave\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ü\5B\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/AutoSave.nvim",
    url = "https://hub.fastgit.org/Pocco81/AutoSave.nvim"
  },
  LeaderF = {
    commands = { "Leaderf" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/LeaderF",
    url = "https://hub.fastgit.org/Yggdroot/LeaderF"
  },
  ["alpha-nvim"] = {
    config = { "require('config.alpha-nvim')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://hub.fastgit.org/goolord/alpha-nvim"
  },
  ["asyncrun.vim"] = {
    commands = { "AsyncRun" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://hub.fastgit.org/skywind3000/asyncrun.vim"
  },
  ["better-escape.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/better-escape.vim",
    url = "https://hub.fastgit.org/jdhao/better-escape.vim"
  },
  ["bufferline.nvim"] = {
    config = { "require('config.bufferline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://hub.fastgit.org/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://hub.fastgit.org/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspconfig" },
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {
      ["nvim-cmp"] = true,
      ultisnips = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips",
    url = "https://hub.fastgit.org/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://hub.fastgit.org/hrsh7th/cmp-path"
  },
  ["committia.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/committia.vim",
    url = "https://hub.fastgit.org/rhysd/committia.vim"
  },
  delimitMate = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/delimitMate",
    url = "https://hub.fastgit.org/Raimondi/delimitMate"
  },
  ["doom-one.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/doom-one.nvim",
    url = "https://hub.fastgit.org/NTBBloodbath/doom-one.nvim"
  },
  edge = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/edge",
    url = "https://hub.fastgit.org/sainnhe/edge"
  },
  everforest = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/everforest",
    url = "https://hub.fastgit.org/sainnhe/everforest"
  },
  ["gruvbox-material"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/gruvbox-material",
    url = "https://hub.fastgit.org/sainnhe/gruvbox-material"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.nvim_hop\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ð\aB\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://hub.fastgit.org/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    config = { "require('impatient')" },
    loaded = true,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://hub.fastgit.org/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "require('config.indent-blankline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://hub.fastgit.org/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/kanagawa.nvim",
    url = "https://hub.fastgit.org/rebelot/kanagawa.nvim"
  },
  ["lspkind-nvim"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/lspkind-nvim",
    url = "https://hub.fastgit.org/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('config.statusline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://hub.fastgit.org/nvim-lualine/lualine.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://hub.fastgit.org/sbdchd/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.neoscroll\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ð\aB\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://hub.fastgit.org/karb94/neoscroll.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nightfox.nvim",
    url = "https://hub.fastgit.org/EdenEast/nightfox.nvim"
  },
  ["nord.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nord.nvim",
    url = "https://hub.fastgit.org/shaunsingh/nord.nvim"
  },
  ["nvim-bqf"] = {
    config = { "require('config.bqf')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://hub.fastgit.org/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "cmp-buffer", "cmp-nvim-lua", "cmp-path", "cmp-nvim-ultisnips" },
    config = { "require('config.nvim-cmp')" },
    load_after = {
      ["lspkind-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://hub.fastgit.org/hrsh7th/nvim-cmp"
  },
  ["nvim-gdb"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-gdb",
    url = "https://hub.fastgit.org/sakhnik/nvim-gdb"
  },
  ["nvim-hlslens"] = {
    config = { "require('config.hlslens')" },
    keys = { { "n", "*" }, { "n", "#" }, { "n", "n" }, { "n", "N" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-hlslens",
    url = "https://hub.fastgit.org/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp')" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://hub.fastgit.org/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23config.nvim-notify\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ð\aB\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://hub.fastgit.org/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://hub.fastgit.org/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://hub.fastgit.org/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/onedark.nvim",
    url = "https://hub.fastgit.org/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://hub.fastgit.org/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://hub.fastgit.org/nvim-lua/plenary.nvim"
  },
  sonokai = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/sonokai",
    url = "https://hub.fastgit.org/sainnhe/sonokai"
  },
  tabular = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    commands = { "Tabularize" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/tabular",
    url = "https://hub.fastgit.org/godlygeek/tabular"
  },
  ["targets.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/targets.vim",
    url = "https://hub.fastgit.org/wellle/targets.vim"
  },
  ["telescope-symbols.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/telescope-symbols.nvim",
    url = "https://hub.fastgit.org/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-symbols.nvim" },
    commands = { "Telescope" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://hub.fastgit.org/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after = { "vim-snippets", "cmp-nvim-ultisnips" },
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://hub.fastgit.org/SirVer/ultisnips"
  },
  ["unicode.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/unicode.vim",
    url = "https://hub.fastgit.org/chrisbra/unicode.vim"
  },
  ["vim-asterisk"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-asterisk",
    url = "https://hub.fastgit.org/haya14busa/vim-asterisk"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-commentary",
    url = "https://hub.fastgit.org/tpope/vim-commentary"
  },
  ["vim-conflicted"] = {
    commands = { "Conflicted" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-conflicted",
    url = "https://hub.fastgit.org/christoomey/vim-conflicted"
  },
  ["vim-eunuch"] = {
    commands = { "Rename", "Delete" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-eunuch",
    url = "https://hub.fastgit.org/tpope/vim-eunuch"
  },
  ["vim-flog"] = {
    commands = { "Flog" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-flog",
    url = "https://hub.fastgit.org/rbong/vim-flog"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://hub.fastgit.org/tpope/vim-fugitive"
  },
  ["vim-gruvbox8"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-gruvbox8",
    url = "https://hub.fastgit.org/lifepillar/vim-gruvbox8"
  },
  ["vim-highlighturl"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-highlighturl",
    url = "https://hub.fastgit.org/itchyny/vim-highlighturl"
  },
  ["vim-indent-object"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-indent-object",
    url = "https://hub.fastgit.org/michaeljsmith/vim-indent-object"
  },
  ["vim-json"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-json",
    url = "https://hub.fastgit.org/elzr/vim-json"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://hub.fastgit.org/plasticboy/vim-markdown"
  },
  ["vim-markdownfootnotes"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-markdownfootnotes",
    url = "https://hub.fastgit.org/vim-pandoc/vim-markdownfootnotes"
  },
  ["vim-matchup"] = {
    after_files = { "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://hub.fastgit.org/andymass/vim-matchup"
  },
  ["vim-mundo"] = {
    commands = { "MundoToggle", "MundoShow" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-mundo",
    url = "https://hub.fastgit.org/simnalamburt/vim-mundo"
  },
  ["vim-obsession"] = {
    commands = { "Obsession" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-obsession",
    url = "https://hub.fastgit.org/tpope/vim-obsession"
  },
  ["vim-oscyank"] = {
    commands = { "OSCYank", "OSCYankReg" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-oscyank",
    url = "https://hub.fastgit.org/ojroques/vim-oscyank"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-python-pep8-indent",
    url = "https://hub.fastgit.org/Vimjas/vim-python-pep8-indent"
  },
  ["vim-pythonsense"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-pythonsense",
    url = "https://hub.fastgit.org/jeetsukumaran/vim-pythonsense"
  },
  ["vim-repeat"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://hub.fastgit.org/tpope/vim-repeat"
  },
  ["vim-sandwich"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-sandwich",
    url = "https://hub.fastgit.org/machakann/vim-sandwich"
  },
  ["vim-scriptease"] = {
    commands = { "Scriptnames", "Message", "Verbose" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-scriptease",
    url = "https://hub.fastgit.org/tpope/vim-scriptease"
  },
  ["vim-signify"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-signify",
    url = "https://hub.fastgit.org/mhinz/vim-signify"
  },
  ["vim-snippets"] = {
    load_after = {
      ultisnips = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-snippets",
    url = "https://hub.fastgit.org/honza/vim-snippets"
  },
  ["vim-swap"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-swap",
    url = "https://hub.fastgit.org/machakann/vim-swap"
  },
  ["vim-tmux"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-tmux",
    url = "https://hub.fastgit.org/tmux-plugins/vim-tmux"
  },
  ["vim-toml"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-toml",
    url = "https://hub.fastgit.org/cespare/vim-toml"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.which-key\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ð\aB\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://hub.fastgit.org/folke/which-key.nvim"
  },
  ["whitespace.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/whitespace.nvim",
    url = "https://hub.fastgit.org/jdhao/whitespace.nvim"
  },
  ["wilder.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://hub.fastgit.org/gelguy/wilder.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { "require('config.zen-mode')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/qiqiang/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://hub.fastgit.org/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: wilder.nvim
time([[Setup for wilder.nvim]], true)
vim.cmd('packadd wilder.nvim')
time([[Setup for wilder.nvim]], false)
-- Setup for: nvim-gdb
time([[Setup for nvim-gdb]], true)
vim.cmd('packadd nvim-gdb')
time([[Setup for nvim-gdb]], false)
-- Setup for: committia.vim
time([[Setup for committia.vim]], true)
vim.cmd('packadd committia.vim')
time([[Setup for committia.vim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
require('impatient')
time([[Config for impatient.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Obsession lua require("packer.load")({'vim-obsession'}, { cmd = "Obsession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MundoToggle lua require("packer.load")({'vim-mundo'}, { cmd = "MundoToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file OSCYankReg lua require("packer.load")({'vim-oscyank'}, { cmd = "OSCYankReg", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Leaderf lua require("packer.load")({'LeaderF'}, { cmd = "Leaderf", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Rename lua require("packer.load")({'vim-eunuch'}, { cmd = "Rename", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Delete lua require("packer.load")({'vim-eunuch'}, { cmd = "Delete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Flog lua require("packer.load")({'vim-flog'}, { cmd = "Flog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file OSCYank lua require("packer.load")({'vim-oscyank'}, { cmd = "OSCYank", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Scriptnames lua require("packer.load")({'vim-scriptease'}, { cmd = "Scriptnames", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Message lua require("packer.load")({'vim-scriptease'}, { cmd = "Message", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Verbose lua require("packer.load")({'vim-scriptease'}, { cmd = "Verbose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Conflicted lua require("packer.load")({'vim-conflicted'}, { cmd = "Conflicted", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MundoShow lua require("packer.load")({'vim-mundo'}, { cmd = "MundoShow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> * <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "*", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> N <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "N", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> # <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "#", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> n <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType toml ++once lua require("packer.load")({'vim-toml'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-json', 'vim-markdown', 'vim-markdownfootnotes'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType tmux ++once lua require("packer.load")({'vim-tmux'}, { ft = "tmux" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-python-pep8-indent', 'vim-pythonsense'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-json'}, { ft = "json" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim', 'vim-swap', 'lspkind-nvim', 'whitespace.nvim', 'nvim-web-devicons', 'targets.vim', 'AutoSave.nvim', 'alpha-nvim', 'vim-asterisk', 'vim-commentary', 'bufferline.nvim', 'vim-highlighturl', 'vim-indent-object', 'vim-matchup', 'unicode.vim', 'hop.nvim', 'neoscroll.nvim', 'vim-repeat', 'vim-sandwich', 'indent-blankline.nvim', 'which-key.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { event = "FileType qf" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'vim-signify', 'nvim-notify'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au User InGitRepo ++once lua require("packer.load")({'vim-fugitive'}, { event = "User InGitRepo" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'ultisnips', 'better-escape.vim', 'delimitMate'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]], true)
vim.cmd [[source /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]]
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]], false)
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], true)
vim.cmd [[source /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]]
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], false)
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], true)
vim.cmd [[source /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], false)
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/qiqiang/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
