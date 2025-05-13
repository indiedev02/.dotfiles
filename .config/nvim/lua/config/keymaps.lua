-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opt = { noremap = true, silent = true }

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opt)
keymap.set("n", "<tab>", ":tabnext<Return>", opt)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opt)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.jump({ count = 1, float = true })
end)
