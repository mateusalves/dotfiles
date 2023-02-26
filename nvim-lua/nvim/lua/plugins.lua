return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use 'rust-lang/rust.vim'
	use 'luochen1990/rainbow'
	use 'neovimhaskell/haskell-vim'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'Shirk/vim-gas'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'DingDean/wgsl.vim'
	use 'alaviss/nim.nvim'
	use 'tpope/vim-dispatch'
	use 'neovim/nvim-lspconfig'
	use 'ray-x/lsp_signature.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/vim-vsnip'
	use 'zefei/vim-colortuner'
	use 'nvim-treesitter/nvim-treesitter'
	use 'sbdchd/neoformat'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'ntpeters/vim-better-whitespace'
	use 'windwp/nvim-autopairs'
	use 'preservim/vimux'
	use 'williamboman/nvim-lsp-installer'
	use 'easymotion/vim-easymotion'
	use 'tpope/vim-fugitive'
	use 'sjl/badwolf'

    --old stuff
    use 'preservim/nerdcommenter'
	use 'preservim/nerdtree'
    use 'tsony-tsonev/nerdtree-git-plugin'
	use 'voldikss/vim-floaterm'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'wellle/tmux-complete.vim'
    use 'mhinz/vim-startify'
    use 'airblade/vim-gitgutter'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'APZelos/blamer.nvim'
    --use 'nvim-treesitter/nvim-treesitter'

end)
