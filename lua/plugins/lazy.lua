local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local opts = {
}

local plugins = {
    require("plugins.lsp"),
    require("plugins.cmp"),
    require("plugins.mason"),
    require("plugins.zero"),
    require("plugins.treesitter"),
    require("plugins.theme"),
    require("plugins.lspkind"),
    require("plugins.lspformat"),
    require("plugins.telescope"),
    require("plugins.fugitive"),
    require("plugins.leap"),
    require("plugins.trouble"),
    require("plugins.undotree"),
}

require("lazy").setup(plugins, opts)

