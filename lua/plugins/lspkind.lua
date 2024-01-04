return {
    "onsails/lspkind.nvim",

    config = function()
        local lspkind = require("lspkind")
        lspkind.init({
            symbol_map = {
                Text            = "τ Text",
                Method          = "ω Method",
                Function        = "φ Function",
                Constructor     = "Ω Constructor",
                Field           = "β Field",
                Variable        = "α Variable",
                Class           = "Λ Class",
                Interface       = "Ψ Interface",
                Module          = "Σ Module",
                Property        = "γ Property",
                Unit            = "θ Unit",
				Value 			= "μ Value",
				Enum 			= "Ξ Enum",
				Keyword 		= "λ Keyword",
				Snippet 		= "η Snippet",
				Color 			= "σ Color",
				File 			= "ε File",
				Reference 		= "ζ Reference",
				Folder 			= "ξ Folder",
				EnumMember 		= "Γ Enum Member",
				Constant 		= "π Constant",
				Struct 			= "Π Struct",
				Event 			= "δ Event",
				Operator 		= "Δ Operator",
				TypeParameter 	= "ν Type Parameter",
            }
        })
    end

}

