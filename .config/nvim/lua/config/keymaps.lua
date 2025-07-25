-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Legend Primeagen

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Tmux Navigation
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<Return>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<Return>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<Return>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<Return>", opts)
