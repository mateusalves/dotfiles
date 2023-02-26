require('plugins')

-- space as leader
vim.g.mapleader = " "

require("nvim-lsp-installer").setup {}
-- so ~/.config/nvim/legacy.vim
-- load legacy options


vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end

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

--require'nvim-treesitter.configs'.setup {
--  -- A list of parser names, or "all"
--  ensure_installed = { "c", "cpp", "cmake", "make", "bash", "python", "yang", "lua", "vim", "go", "rust" },

--  -- Install parsers synchronously (only applied to `ensure_installed`)
--  --sync_install = false,
--  sync_install = true,

--  -- List of parsers to ignore installing (for "all")
--  ignore_install = { "javascript" },

--  highlight = {
--    -- `false` will disable the whole extension
--    enable = true,

--    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--    -- the name of the parser)
--    -- list of language that will be disabled
--    disable = { "vim", "go", "rust" },

--    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--    -- Using this option may slow down your editor, and you may see some duplicate highlights.
--    -- Instead of true it can also be a list of languages
--    additional_vim_regex_highlighting = false,
--  },
--}

