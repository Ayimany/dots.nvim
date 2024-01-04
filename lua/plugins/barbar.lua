return {
    "romgrk/barbar.nvim",

    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },

    init = function() vim.g.barbar_auto_setup = false end,

    config = function()
        local barbar = require("barbar")
        barbar.setup()

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
        map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

        map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
        map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

        map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
        map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
        map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
        map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
        map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
        map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
        map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
        map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
        map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
        map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

        map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

        map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
        map('n', '<A-C>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)

        map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

        map('n', '<Space>bsn', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
        map('n', '<Space>bsd', '<Cmd>BufferOrderByDirectory<CR>', opts)
        map('n', '<Space>bsl', '<Cmd>BufferOrderByLanguage<CR>', opts)
        map('n', '<Space>bsw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

    end,


}
