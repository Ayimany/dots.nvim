return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
        vim.keymap.set("n", "<leader>qq", "<cmd>TroubleToggle<CR>")
    end
}
