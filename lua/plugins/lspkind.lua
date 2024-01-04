return {
    "onsails/lspkind.nvim",

    config = function()
        local lspkind = require("lspkind")

        lspkind.init({
            symbol_map = {
                Text            = "τ",
                Method          = "ω",
                Function        = "φ",
                Constructor     = "Ω",
                Field           = "β",
                Variable        = "α",
                Class           = "Λ",
                Interface       = "Ψ",
                Module          = "Σ",
                Property        = "γ",
                Unit            = "θ",
                Value           = "μ",
                Enum            = "Ξ",
                Keyword         = "λ",
                Snippet         = "η",
                Color           = "σ",
                File            = "ε",
                Reference       = "ζ",
                Folder          = "ξ",
                EnumMember      = "Γ",
                Constant        = "π",
                Struct          = "Π",
                Event           = "δ",
                Operator        = "Δ",
                TypeParameter   = "ν",

            }
        })
    end
}

