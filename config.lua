-- Option configuration
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.wrap = true

-- Theme settings
-- lvim.colorscheme = "desert"
lvim.colorscheme = "github_dark_colorblind"

-- Traspareant Window
lvim.transparent_window = false

-- leader key
lvim.leader = "space"

-- Keybinding

lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<C-q>"] = ":q<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<C-c>"] = "<ESC>"


lvim.builtin.terminal.open_mapping = "<c-t>"

-- keybinding Lsp
lvim.lsp.buffer_mappings.normal_mode['H'] = { vim.lsp.buf.hover, "Show documentation" }

-- whichkey mappings
lvim.builtin.which_key.mappings["m"] ={
  name = "CodeRun",
  j = {":w <bar> !node % <cr>","Run js Code" },
  p = {":w <bar> !python % <cr>", "Run PY Code"},
  c = {":w <bar> !g++ -std=c++17 % -o %:r <cr> :vnew <bar> <cr><cr>","Run C++ Code"},
  J = {":w <bar> !javac % && java %:r <cr>","Run Java Code"},
  r = {":w <bar> !rustc % && ./%:r <cr>","Run Rust Code"}
}

-- Plugins
-- Github color theme
lvim.plugins = {
{
  'projekt0n/github-nvim-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_colorblind')
  end,
},
{
  "pwntester/octo.nvim",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("octo").setup()
  end,
},
{
  "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

}
