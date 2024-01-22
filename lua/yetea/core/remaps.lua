vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>n", ":Lexplore<CR>")

keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<leader>w", "<cmd>w<cr>")

keymap.set("v", "<up>", ":m '<-2<CR>gv=gv")
keymap.set("v", "<down>", ":m '>+1<CR>gv=gv")
keymap.set("n", "<up>", ":m .-2<CR>==")
keymap.set("n", "<down>", ":m .+1<CR>==")

keymap.set("x", "<leader>p", [["_dP]])

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>bd", ":bdelete<CR>")
