require('plugins')

-- space as leader
vim.g.mapleader = " "

require("nvim-lsp-installer").setup {}
-- so ~/.config/nvim/legacy.vim
-- load legacy options
vim.cmd([[
	so ~/.config/nvim/legacy.vim
 ]])

require('set')
require('mylsp')
require('nvimcmp')

-- lsp_signature.nvim
lsp_signature_cfg = {
    hint_prefix = "",
    floating_window = false
}
require "lsp_signature".setup(lsp_signature_cfg)

-- lualine
require('lualine').setup()

-- nvim-treesitter
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
    },
}

require('nvim-autopairs').setup {}
