----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: java.lua
-- Description: Java and Spring-specific plugins
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

return {
    {
        "jkeresman01/java-maven-test.nvim",
        ft = "java",
    },
    {
        "jkeresman01/java-method-search.nvim",
        ft = "java",
    },
    {
        "jkeresman01/spring-initializr.nvim",
        opts = {},
        keys = {
            {
                "<leader>si",
                "<CMD>SpringInitializr<CR>",
                desc = "Spring Initializr: open UI",
            },
            {
                "<leader>sg",
                "<CMD>SpringGenerateProject<CR>",
                desc = "Spring Initializr: generate project",
            },
        },
    },
}
