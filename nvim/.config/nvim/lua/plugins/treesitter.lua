return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    config = function()
        require "nvim-treesitter.configs".setup({
            ensure_installed = {
                "javascript", "typescript", "lua", "vim", "vimdoc",
                "jsdoc", "bash", "rust", "python", "go", "tsx"
            },

            sync_install = false,

            auto_install = true,

            indent = {
                enable = true,
            },

            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        vim.notify(
                            "File larger than 100KB, Treesitter disabled for performance",
                            vim.log.levels.WARN,
                            { title = "Treesitter" }
                        )
                        return true
                    end
                    return false
                end,

                additional_vim_regex_highlighting = { "markdown" },
            }
        })

        local parser_config = require"nvim-treesitter.parsers".get_parser_configs()
        parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = { "src/parser.c", "src/scanner.c" },
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")
    end,
}
