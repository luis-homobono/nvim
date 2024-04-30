vim.g.mapleader = " "
-- vim.g.maplocalleader = "  "
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })
-- keymap.set({ "i", "n" }, "<leader>h", "<cmd>nohlsearch<CR><esc>", { desc = "Escape and Clear hlsearch" })

-- increment / decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window manager
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs manager
keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<S-h>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-l>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- buffers manager
keymap.set("n", "<leader>bn", "<cmd>bd<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- general keys
keymap.set({ "n", "i", "x", "s" }, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save file" })
keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })
keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Exit nvim" })
keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })
keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all text" })
