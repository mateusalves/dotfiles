call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
"Plug 'ThePrimeagen/vim-be-good' 
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/nerdcommenter'
"Plug 'airblade/vim-gitgutter'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'ntpeters/vim-better-whitespace'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
" i'll get rid of it asap
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-s> :w<cr>

map <C-b> :NERDTreeToggle<cr>
"map <C-/> :NERDCommenterToggle<cr>
"map <C-/> :NERDCommenterToggle<cr>

"vmap <c-/> :NERDCommenterToggle<CR>
"nmap <c-/> :NERDCommenterToggle<CR>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

let g:NERDTreeGitStatusWithFlags = 1

set smarttab
set cindent
set tabstop=4
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" To Play Vim be good type in a empty file:
" :VimBeGood

