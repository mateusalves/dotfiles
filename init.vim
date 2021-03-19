call plug#begin()
"Plug 'morhetz/gruvbox'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'puremourning/vimspector'
Plug 'mhinz/vim-startify'
Plug 'wellle/tmux-complete.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox
"set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set clipboard=unnamedplus " public copy/paste register

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap <C-c> <esc>

nnoremap <leader>sh :split<cr>
nnoremap <leader>sj :vsplit<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-s> :w<cr>
inoremap <c-s> <ESC>:w<CR>

nnoremap <c-b> :NERDTreeToggle<cr>
nnoremap <c-q> :q!<cr>
nnoremap <c-w> :wq<cr>

map <C-z> <plug>NERDCommenterToggle<CR>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_node_path = '/usr/bin/nodejs'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" moves current line down or up
nnoremap <leader>] ddp
nnoremap <leader>[ ddkP

vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>. :bn<cr>
nnoremap <leader>, :bp<cr>
nnoremap <leader>m :bd<cr>

nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>rp :resize 100<CR>

nnoremap <leader>tl :ALEToggle<CR>

nmap <leader>gf :diffget //2<CR>
nmap <leader>gh :diffget //3<CR>
" get status
nmap <leader>gs :vertical G<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<cR>gv=gv

set smarttab
set cindent
set exrc
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
set nohlsearch
set completeopt=menuone,noinsert,noselect
set encoding=UTF-8

set guifont=DroidSansMono\ Nerd\ Font\ 11

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set signcolumn=yes

highlight Comment cterm=italic gui=italic

set ruler
set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set showmatch "highlights matching brackets

" Enable folding
set foldmethod=indent
set foldlevel=99

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:NERDTreeGitStatusWithFlags = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
let g:NERDTreeGitStatusWithFlags = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:vimspector_enable_mappings = 'HUMAN'

" for normal mode - the word under the cursor
nmap <leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <leader>di <Plug>VimspectorBalloonEval

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
"let g:ale_set_highlights = 0
" Set this in your vimrc file to disabling highlighting
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_enabled = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
nmap ghj <Plug>(GitGutterNextHunk)
nmap ghk <Plug>(GitGutterPrevHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nmap <leader>tgh :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_show_msg_on_hunk_jumping = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
nnoremap <leader>gds :vertical Gdiffsplit<CR>
nnoremap <leader>gb :GBrowse<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''

let g:blamer_enabled = 1
let g:blamer_delay = 500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'jellybeans'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_section_b = airline#section#create(['%{sy#repo#get_stats_decorated()}',' » ','%{fugitive#head()}'])
let g:airline_section_x = '%{strftime("%x, %H:%M")}'
" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

"true colours
set background=dark
set t_Co=256

"colorscheme jellybeans
colorscheme purify

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''

let g:startify_files_number = 5
let g:startify_dir_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1

let g:startify_bookmarks = [
  \ '~/.config/nvim/init.vim',
  \ '~/.zshrc',
  \ '~/.bashrc',
  \ '~/.tmux.conf',
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
" To Play Vim be good type in a empty file:
" :VimBeGood
