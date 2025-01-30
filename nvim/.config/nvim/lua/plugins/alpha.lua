return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require"alpha"
        local dashboard = require"alpha.themes.dashboard"

        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
        }

        dashboard.section.buttons.val = {
            dashboard.button("SPC n", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("SPC pf", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        vim.cmd([[autocmd FileType alha setlocal nofoldenable]])
    end

} 
