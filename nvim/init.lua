-- disable vim modules at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0

--====== Init lazy.nvim package manager:
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -------------------------- General Purpose -------------------------
  { "kyazdani42/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-treesitter/nvim-treesitter", dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" }, build = ":TSUpdate", },
  { "folke/todo-comments.nvim", config = true, },
  { "windwp/nvim-autopairs", config = true, },
  { 'tpope/vim-repeat' },
  { 'tpope/vim-surround' },
  { 'tpope/vim-unimpaired' },
  { 'tpope/vim-fugitive' },
  { 'mfussenegger/nvim-dap', dependencies = { "suketa/nvim-dap-ruby" } },
--  { 'luukvbaal/statuscol.nvim', config = true },
  -------------------------- Autocompletion --------------------------
  {
    "neovim/nvim-lspconfig",
    dependencies = {
--      { "williamboman/mason.nvim", config = true },
--      "williamboman/mason-lspconfig.nvim",
--      "j-hui/fidget.nvim",
--      "folke/neodev.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { 'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-vsnip' },
--    event = { "InsertEnter", "CmdlineEnter" },
  },
  {
    'dcampos/nvim-snippy',
    dependencies = { 'honza/vim-snippets', 'dcampos/cmp-snippy' },
  },
  { "mfussenegger/nvim-jdtls", dependencies = { 'mfussenegger/nvim-dap' } },
  -------------------------- Eye Candy -------------------------------
  { "brenoprata10/nvim-highlight-colors", config = true, },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },
--  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
})

--====== NVim global/general options
vim.g.mapleader = ";"
vim.o.hlsearch = true
vim.wo.number = true
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.wo.signcolumn = "yes"
vim.wo.scrolloff = 3
-- vim.o.updatetime = 250
-- vim.o.timeout = true
-- vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.o.termguicolors = true
vim.cmd 'set tabstop=2 shiftwidth=2 expandtab'
vim.cmd[[colorscheme kanagawa]]

-- NVim general mappings
vim.keymap.set('n', '<Esc><Esc>', '<cmd>w<cr>', { silent = true}) -- Faster save with ESC ESC
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { silent = true }) -- NvimTreeToggle

-- NVim Telescope mappings
vim.keymap.set('n', '<leader>;', "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set('n', '<leader>f', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set('n', '<leader>i', "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set('n', '<leader>o', "<cmd>lua require('telescope.builtin').treesitter()<cr>")
vim.keymap.set('n', '<leader>d', "<cmd>lua require('telescope.builtin').diagnostics()<cr>")
vim.keymap.set('n', '<leader>h', "<cmd>lua require('telescope.builtin').git_bcommits()<cr>")
vim.keymap.set('n', '<leader>m', "<cmd>lua require('telescope.builtin').marks()<cr>")

-- Plugins initialization
require("plugins.lualine").start()
require("plugins.telescope").start()
require("plugins.lsp").start()
require("plugins.treesitter").start()
require("plugins.nvimtree").start()
require("plugins.dap").start()
