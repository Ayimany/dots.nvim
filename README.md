# dots.nvim
These are the configuration files associated with my Neovim setup.

Uses [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) bc I'm tired of
manually configuring LSPs. Fun while it lasted and learned a lot.

## Requirements / Dependencies
There are some dead-simple requirements. Older versions may work but these are
the ones I am using at the moment of writing this.
- lua 5.1+
- fzf 0.44+
- ripgrep 14.0+

## Plugins
Here is the list of plugins included with the setup.  
Plugins are managed through [lazy.nvim](https://github.com/folke/lazy.nvim).

| Plugin | Purpose |
| --- | --- |
| [rose-pine](https://github.com/rose-pine/neovim) | Theme
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy Finder |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git Managenent |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | Text Leaping |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | LSP Quick View |
| [undotree.nvim](https://github.com/mbbill/undotree) | Undoing Stuff |

### lsp-zero plugins
Plugins used in conjunction with lsp-zero

| Plugin | Purpose |
| --- | --- |
| [lspkind.nvim](https://github.com/onsails/lspkind.nvim) | Cool little LSP icons |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Declarative LSP management |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion |
| [lsp-format.nvim](https://github.com/lukas-reineke/lsp-format.nvim) | Autoformatting |

Have fun.

