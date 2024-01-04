return {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
        local theme = require("rose-pine")
        theme.setup({
            variant = "main",
            disable_italics = true,

            groups = {
                background = "#000000"
            },

            highlight_groups = {
		        ColorColumn = { bg = 'surface' },

		        CursorLine = { bg = 'foam', blend = 10 },
		        StatusLine = { fg = 'love', bg = 'love', blend = 10 },

		        Search = { bg = 'gold', inherit = false },
	        }
        })

        vim.cmd('colorscheme rose-pine')
    end

}
