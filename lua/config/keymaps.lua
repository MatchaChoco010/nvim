-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function feedkeys(keys)
  local term = vim.api.nvim_replace_termcodes(keys, true, false, true)
  vim.api.nvim_feedkeys(term, "n", false)
end

vim.keymap.set("n", "<C-d>", function()
  local half = math.floor(vim.api.nvim_win_get_height(0) / 2)
  for _ = 1, half do
    feedkeys("<C-e>")
  end
end, { silent = true })

vim.keymap.set("n", "<C-u>", function()
  local half = math.floor(vim.api.nvim_win_get_height(0) / 2)
  for _ = 1, half do
    feedkeys("<C-y>")
  end
end, { silent = true })
