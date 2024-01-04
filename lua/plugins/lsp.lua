return {
    "neovim/nvim-lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },

    dependencies = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'williamboman/mason-lspconfig.nvim'},
    },

    config = function()
        local zero = require("lsp-zero")
        zero.extend_lspconfig()

        zero.on_attach(function(_, bufnr)
            local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
            local opts = {buffer = bufnr, remap = false}

            vim.keymap.set("n", "gd",           function() vim.lsp.buf.definition()         end, opts)
            vim.keymap.set("n", "K",            function() vim.lsp.buf.hover()              end, opts)
            vim.keymap.set("n", "<leader>vd",   function() vim.diagnostic.open_float()      end, opts)
            vim.keymap.set("n", "d[",           function() vim.diagnostic.goto_next()       end, opts)
            vim.keymap.set("n", "d]",           function() vim.diagnostic.goto_prev()       end, opts)
            vim.keymap.set("n", "<leader>ws",   function() vim.lsp.buf.workspace_symbol()   end, opts)
            vim.keymap.set("n", "<leader>ca",   function() vim.lsp.buf.code_action()        end, opts)
            vim.keymap.set("n", "<leader>rr",   function() vim.lsp.buf.references()         end, opts)
            vim.keymap.set("n", "<leader>rn",   function() vim.lsp.buf.rename()             end, opts)
            vim.keymap.set("i", "<C-h>",        function() vim.lsp.buf.signature_help()     end, opts)

            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })

            end
        end)

        local mason = require("mason-lspconfig")

        mason.setup({
            ensure_installed = {
                "clangd",
                "rust_analyzer",
                "lua_ls"
            },
            handlers = {
                zero.default_setup,
                lua_ls = function()
                    local opts = zero.nvim_lua_ls()
                    require("lspconfig").lua_ls.setup(opts)
                end

            }
        })
    end
}

