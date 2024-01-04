return {
    "tpope/vim-fugitive",

    config = function ()
        vim.keymap.set("n", "<leader>gg", vim.cmd.Git)

        local au_fugitive = vim.api.nvim_create_augroup("AUC_Fugitive", {})

        vim.api.nvim_create_autocmd("BufWinEnter", {
            group = au_fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = {buffer = bufnr, remap = false}

                vim.keymap.set("n", "<leader>ga", function()
                    vim.cmd.Git("add .")
                end, opts)

                vim.keymap.set("n", "<leader>gm", function()
                    vim.cmd.Git("commit -S")
                end, opts)

                vim.keymap.set("n", "<leader>gp", function()
                    vim.cmd.Git("push")
                end, opts)

                vim.keymap.set("n", "<leader>gP", function()
                    vim.cmd.Git({"pull",  "--rebase"})
                end, opts)

                vim.keymap.set("n", "<leader>gF", function()
                    vim.cmd.Git({"fetch"})
                end, opts)

                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);

            end

        })

    end
}

