return {
    "neovim/nvim-lspconfig",

    dependencies ={
        'stevearc/conform.nvim',
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    },

    config = function()
        require"conform".setup({
            formatters_by_ft={}
        })

        local lspconfig_defaults = require"lspconfig".util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            "force",
            lspconfig_defaults.capabilities,
            require"cmp_nvim_lsp".default_capabilities()
        )
        require"mason".setup({})
        require"mason-lspconfig".setup({
            handlers = {
                function(server_name)
                    require"lspconfig"[server_name].setup({})
                end
            }
        })

        local cmp = require"cmp"

        cmp.setup({
            sources = {
                {name = "nvim_lsp"},
                {name = "buffer"},
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
               ['<C-y>'] = cmp.mapping.confirm({select = true}), 

            }),
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            }
        })

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '✘',
                    [vim.diagnostic.severity.WARN] = '▲',
                    [vim.diagnostic.severity.HINT] = '⚑',
                    [vim.diagnostic.severity.INFO] = '»',
                },
            },
        })
    end
}
