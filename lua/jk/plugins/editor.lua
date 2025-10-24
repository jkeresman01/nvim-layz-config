----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: editor.lua
-- Description: Core editor enhancement plugins
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

return {
    {
        "rstacruz/vim-closer",
        event = "InsertEnter",
    },
    {
        "tpope/vim-commentary",
        keys = {
            { "gc", mode = { "n", "v" } },
            { "gcc", mode = "n" },
        },
    },
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        keys = {
            { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent directory" },
        },
    },
}
