-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<C-]>", [[<C-\><C-n>]], { desc = "escape from terminal" })

vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Line Comment Toggle" })

vim.keymap.set("n", "<M-t>", function()
  require("snacks.terminal").toggle()
end, { desc = "Toggle terminal" })
vim.keymap.set("t", "<M-t>", function()
  require("snacks.terminal").toggle()
end, { desc = "Toggle terminal" })
