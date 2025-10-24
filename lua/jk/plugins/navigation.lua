----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: navigation.lua
-- Description: Navigation plugins (Harpoon, TMUX switch, Active files)
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

return {
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<C-e>",
                function()
                    require("harpoon.ui").toggle_quick_menu()
                end,
                desc = "Harpoon: toggle quick menu",
            },
            {
                "<leader>a",
                function()
                    require("harpoon.mark").add_file()
                end,
                desc = "Harpoon: add file",
            },
            {
                "<C-q>",
                function()
                    require("harpoon.ui").nav_file(1)
                end,
                desc = "Harpoon: go to file 1",
            },
            {
                "<C-w>",
                function()
                    require("harpoon.ui").nav_file(2)
                end,
                desc = "Harpoon: go to file 2",
            },
            {
                "<C-t>",
                function()
                    require("harpoon.ui").nav_file(3)
                end,
                desc = "Harpoon: go to file 3",
            },
            {
                "<C-z>",
                function()
                    require("harpoon.tmux").sendCommand(1, "~/random_script/tmux_switch.sh\n")
                end,
                desc = "Harpoon: tmux switch script",
            },
        },
    },
    {
        "jkeresman01/active-files.nvim",
        opts = {},
        keys = {
            {
                "<leader><Tab>",
                "<CMD>ShowActiveFiles<CR>",
                desc = "Active Files: open UI",
            },
            { "<CR>", "<CMD>SelectActiveFile<CR>", desc = "Active Files: select file" },
        },
    },
    {
        "jkeresman01/tmux-switch.nvim",
        opts = {},
        keys = {
            { "<C-f>", "<cmd>TmuxSwitch<CR>", desc = "TMUX Switch: open UI" },
            {
                "<leader>cs",
                "<cmd>TmuxCreateSession<CR>",
                desc = "TMUX Switch: create session",
            },
            {
                "<leader>rs",
                "<cmd>TmuxRenameSession<CR>",
                desc = "TMUX Switch: rename session",
            },
        },
    },
}
