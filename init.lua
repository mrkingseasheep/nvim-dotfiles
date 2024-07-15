local o = vim.opt
local g = vim.g

g.mapleader = " "

-- left sidebar
o.number = true
o.relativenumber = true
o.cursorline = true
o.cursorcolumn = true

-- searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.completeopt = { "menu", "menuone", "noselect" }

-- wrapping/indenting
o.wrap = true
o.breakindent = true
o.autoindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = false

-- mouse only during visual mode
o.mouse = "v"

-- misc
o.swapfile = true
o.wildmode = { "longest", "list" }
o.termguicolors = true
o.conceallevel = 2

require("config.bindings")
require("config.lazy")
