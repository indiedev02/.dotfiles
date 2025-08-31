-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable Animations
vim.g.snacks_animate = false

-- Cursor Blinking
vim.o.guicursor = table.concat({
  "n-v-c:block-blinkon500-blinkoff500", -- Normal/Visual/Command mode: blinking block
  "i-ci-ve:ver25-blinkon500-blinkoff500", -- Insert/Insert Command/Visual Exclusive: blinking vertical bar
  "r-cr:hor20-blinkon500-blinkoff500", -- Replace/Command Replace: blinking horizontal bar
  "o:hor50", -- Operator-pending: solid horizontal bar
}, ",")

-- Highlight fix when searching
vim.o.hlsearch = false
vim.o.incsearch = true

vim.g.lazyvim_picker = "fzf"
