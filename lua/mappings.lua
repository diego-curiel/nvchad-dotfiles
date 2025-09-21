require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map(
  "n",
  "<leader>tt",
  "<cmd> lua require('base46').toggle_transparency() <cr>",
  { noremap = true, silent = true, desc = "Toggle Background Transparency" }
)
-- Move lines up and down
map("n", "<A-j>", ":m .+1 <CR>==")
map("n", "<A-k>", ":m .-2 <CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
-- Save file
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Select all buffer
map("n", "<C-a>", "ggVGG")
