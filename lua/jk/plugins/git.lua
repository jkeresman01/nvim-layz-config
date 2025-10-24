----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: git.lua
-- Description: Git integration plugins
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

return {
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "G" },
        keys = {
            {
                "<leader>g",
                "<cmd>vs<CR><cmd>0Git<CR>",
                desc = "Fugitive: status (vertical split)",
            },
            { "<leader>gb", "<cmd>Git blame<CR>", desc = "Fugitive: blame current file" },
            { "<leader>gl", "<cmd>vs<CR><cmd>0Git log %<CR>", desc = "Fugitive: log for %" },
            {
                "<leader>glo",
                "<cmd>vs<CR><cmd>0Git log --oneline %<CR>",
                desc = "Fugitive: oneline log for %",
            },
            {
                "<leader>gll",
                "<cmd>vs<CR><cmd>0Git log -1 HEAD<CR>",
                desc = "Fugitive: HEAD (last commit)",
            },
            {
                "<leader>glr",
                "<cmd>vs<CR><cmd>Git log --reverse --no-decorate %<CR>",
                desc = "Fugitive: reverse log for %",
            },
            { "<leader>glg", "<cmd>vs<CR><cmd>Git log --graph<CR>", desc = "Fugitive: graph" },
            {
                "<leader>glgo",
                "<cmd>vs<CR><cmd>Git log --graph --oneline<CR>",
                desc = "Fugitive: graph oneline",
            },
            { "<leader>gc", "<cmd>0Git commit<CR>", desc = "Fugitive: commit" },
            { "<leader>gca", "<cmd>0Git commit --amend<CR>", desc = "Fugitive: commit --amend" },
            {
                "<leader>grs",
                "<cmd>Git reset --soft HEAD~1<CR>",
                desc = "Fugitive: reset --soft HEAD~1",
            },
            {
                "<leader>grh",
                "<cmd>Git reset --hard HEAD~1<CR>",
                desc = "Fugitive: reset --hard HEAD~1",
            },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            signs = {
                add = { text = "│" },
                change = { text = "│" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "┆" },
            },
            signcolumn = true,
            numhl = false,
            linehl = false,
            word_diff = false,
            watch_gitdir = { follow_files = true },
            auto_attach = true,
            attach_to_untracked = false,
            current_line_blame = false,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol",
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
            },
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
                border = "single",
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1,
            },
        },
        keys = {
            {
                "<leader>ph",
                "<cmd>Gitsigns preview_hunk<CR>",
                desc = "Gitsigns: preview hunk",
            },
            { "<leader>sh", "<cmd>Gitsigns stage_hunk<CR>", desc = "Gitsigns: stage hunk" },
            { "<leader>rh", "<cmd>Gitsigns reset_hunk<CR>", desc = "Gitsigns: reset hunk" },
            {
                "<leader>ush",
                "<cmd>Gitsigns undo_stage_hunk<CR>",
                desc = "Gitsigns: undo stage",
            },
        },
    },
}
