vim.mapleader = " "

-- normal mode
vim.keymap.set("n", "<leader>cj", vim.cmd.Ex)

vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "K", "<C-u>zz")

vim.keymap.set("n", "<CR>", "o<Esc>")
vim.keymap.set("n", "<S-CR>", "O<Esc>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

-- insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- visual mode
-- vim.keymap.set("v", "q", "<Esc>") -> maybe complications with other maps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever ('theprimeagen')
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete into void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- window movement
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")

vim.keymap.set("t", "<M-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<M-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<M-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("t", "<M-l>", "<cmd>wincmd l<CR>")

-- resize window
vim.keymap.set("n", "<M-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<M-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<M-Left>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<M-Right>", ":vertical resize -2<CR>")

vim.keymap.set("t", "<M-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("t", "<M-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("t", "<M-Left>", "<cmd>vertical resize +2<CR>")
vim.keymap.set("t", "<M-Right>", "<cmd>vertical resize -2<CR>")

-- new window
vim.keymap.set("n", "<M-v>", "<C-w>v")
vim.keymap.set("n", "<M-s>", "<C-w>s")
