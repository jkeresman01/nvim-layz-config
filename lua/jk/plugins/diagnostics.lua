----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: diagnostics.lua
-- Description: Trouble.nvim for diagnostics
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

return {
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
        keys = {
            {
                "<leader>tt",
                "<cmd>Trouble diagnostics toggle<CR>",
                desc = "Trouble: toggle diagnostics (workspace)",
            },
            {
                "<leader>t",
                "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
                desc = "Trouble: toggle diagnostics (buffer)",
            },
        },
    },
}
