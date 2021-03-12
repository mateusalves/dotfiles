call plug#begin()
"Plug 'morhetz/gruvbox'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'ThePrimeagen/vim-be-good'
Plug 'preservim/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'puremourning/vimspector'
Plug 'mhinz/vim-startify'
Plug 'wellle/tmux-complete.vim'
call plug#end()

"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox
"set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-s> :w<cr>

nnoremap <c-b> :NERDTreeToggle<cr>
nnoremap <c-q> :q!<cr>
nnoremap <c-w> :wq<cr>

map <C-z> <plug>NERDCommenterToggle<CR>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" moves current line down or up
nnoremap <leader>] ddp
nnoremap <leader>[ ddkP

nnoremap <leader>. :bn<cr>
nnoremap <leader>, :bp<cr>

nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>rp :resize 100<CR>

let g:NERDTreeGitStatusWithFlags = 1

set smarttab
set cindent
set tabstop=4 softtabstop=4
set shiftwidth=2
set expandtab
set smartindent
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set encoding=UTF-8

set guifont=DroidSansMono\ Nerd\ Font\ 11

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set signcolumn=yes

set clipboard=unnamed " public copy/paste register
set ruler
set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode
set showmatch "highlights matching brackets

" Enable folding
set foldmethod=indent
set foldlevel=99

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeColorMapCustom = {
"    \ "Staged"    : "#0ee375",
"    \ "Modified"  : "#d9bf91",
"    \ "Renamed"   : "#51C9FC",
"    \ "Untracked" : "#FCE77C",
"    \ "Unmerged"  : "#FC51E6",
"    \ "Dirty"     : "#FFBD61",
"    \ "Clean"     : "#87939A",
"    \ "Ignored"   : "#808080"
"    \ }

let g:vimspector_enable_mappings = 'HUMAN'

" for normal mode - the word under the cursor
nmap <leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <leader>di <Plug>VimspectorBalloonEval

let g:blamer_enabled = 1
let g:blamer_delay = 500

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

highlight Comment cterm=italic gui=italic

set laststatus=2
" set showtabline=2

" true colours
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme jellybeans

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
"let g:startify_custom_header = [
"  \'',
"  \'',
"  \'',
"  \'',
"  \'',
"  \'',
"  \'',
"  \'',
"  \]
let g:startify_bookmarks = [
  \ '~/.config/nvim/init.vim',
  \ '~/.bashrc',
  \ ]

let g:startify_list_order = [
    \ ['   My most recently:'],
    \ 'files',
    \ ['   Sessions:'],
    \ 'sessions',
    \ ['   Current Dir:'],
    \ 'dir',
    \ ['   These are my bookmarks:'],
    \ 'bookmarks',
    \ ]

let g:startify_files_number = 5
let g:startify_dir_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1

" To Play Vim be good type in a empty file:
" :VimBeGood
