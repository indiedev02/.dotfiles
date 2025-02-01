require("config.keymap")
require("config.set")
require("config.lazy")


local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local yank_group = augroup('HighlightYank', {})
local main_group = augroup('SharK-020',{})

-- Highlight Copied Things
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = main_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

