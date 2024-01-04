return {
    "onsails/lspkind.nvim",
    config = function()
        local lspkind = require("lspkind")

        lspkind.init({

            symbol_map = {
                Text            = " 󰦨  Text",
                Method          = "   Method",
                Function        = " 󰡱  Function",
                Constructor     = "   Constructor",
                Field           = "   Field",
                Variable        = "   Variable",
                Class           = "   Class",
                Interface       = "   Interface",
                Module          = " 󱒌  Module",
                Property        = "   Property",
                Unit            = "   Unit",
				Value 			= "   Value",
				Enum 			= "   Enum",
				Keyword 		= "   Keyword",
				Snippet 		= "   Snippet",
				Color 			= " 󰌁  Color",
				File 			= "   File",
				Reference 		= "   Reference",
				Folder 			= "   Folder",
				EnumMember 		= "   Enum Member",
				Constant 		= "   Constant",
				Struct 			= "   Struct",
				Event 			= "   Event",
				Operator 		= "   Operator",
				TypeParameter 	= "   Type Parameter",
            }
        })
    end

}

