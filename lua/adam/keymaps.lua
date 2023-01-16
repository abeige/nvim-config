-- shorten function + options
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open file explore with leader + e
keymap("n", "<leader>e", ":NERDTreeToggle<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>x", ":wq<cr>", opts)

-- window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-d>", "<C-w>q", opts)
keymap("n", "<A-v>", "<C-w>v", opts)

-- resize windows
keymap("n", "<C-S-k>", ":resize -2<cr>", opts)
keymap("n", "<C-S-j>", ":resize +2<cr>", opts)
keymap("n", "<C-S-h>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-S-l>", ":vertical resize +2<cr>", opts)

-- navigate buffers
keymap("n", "L", ":bn<cr>", opts)
keymap("n", "H", ":bp<cr>", opts)
keymap("n", "<leader>d", ":bd<cr>", opts)

-- un-highlight search
keymap("n", "<leader>h", ":noh<cr>", opts)

-- insert mode
keymap("i", "jk", "<esc>", opts)

-- visual mode
keymap("v", "p", '"_dP', opts)
keymap("v", "<leader>j", "<esc>", opts)

-- visual block
keymap("x", "<leader>j", "<esc>", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

