local o = vim.o
local wo = vim.wo

vim.loaded_netrw = 1
vim.g.loaded_netrwplugin = 1

o.termguicolors = true

o.relativenumber = true
o.number = true

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

o.wrap = true

o.ignorecase = false
o.smartcase = true

o.cursorline = true
o.mouse = "a"

o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.completeo = 'menuone,noselect'

o.clipboard = "unnamedplus"

o.splitright = true
o.splitbelow = true

o.swapfile = false
o.backup = false

o.scrolloff = 8

o.undofile = true
o.breakindent = true
o.hlsearch = true

o.splitbelow = true -- Put new windows below current
o.splitright = true -- Put new windows right of current
o.splitkeep = "cursor"

o.updatetime = 250
o.timeoutlen = 300

o.undofile = true

o.breakindent = true

wo.signcolumn = 'yes'

wo.number = true
