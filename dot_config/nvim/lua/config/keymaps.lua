-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Go to the beginning of the line
vim.keymap.del("n", "H")
vim.keymap.set("n", "H", "0")

-- Go to the end of the line
vim.keymap.del("n", "L")
vim.keymap.set("n", "L", "$")
