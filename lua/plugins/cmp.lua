return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
        { "L3MON4D3/LuaSnip" }
    },

    config = function()
        local zero = require("lsp-zero")
        zero.extend_cmp()

        local cmp = require("cmp")
        local cmp_action = zero.cmp_action()

        cmp.setup({
            -- formatting = zero.cmp_format(),
            formatting = {
                fields = {'abbr', 'kind', 'menu'},
                    format = require('lspkind').cmp_format({
                    mode = 'symbol',
                    maxwidth = 50,
                    ellipsis_char = '...',
                })
            },

            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<Tab>'] = cmp_action.luasnip_supertab(),
                ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
                ['<M-Tab>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({select = true}),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            })

        })

    end

}
