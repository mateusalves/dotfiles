" project specific, but oh well. better than exrc!
au FileType cpp nnoremap <silent> ;m :Focus make build -j 10<CR>:Dispatch<CR>
au FileType cpp nnoremap <silent> ;r :Focus make run -j 10<CR>:Dispatch<CR>
au FileType cpp nnoremap <silent> ;cm :Focus make clean; make build -j 10<CR>:Dispatch<CR>
au FileType cpp nnoremap <silent> ;cr :Focus make clean; make run -j 10<CR>:Dispatch<CR>
au FileType cpp nnoremap <silent> ;d :VimuxRunCommand "gdb ./a.out --tui enable"<CR>
au FileType cpp nnoremap <silent> ;dm :VimuxRunCommand "make build -j 10 && lldb ./bin/game"<CR>
au FileType cpp nnoremap <silent> ;dc :VimuxRunCommand "make clean -j 10 && make build -j 10 && lldb ./bin/game"<CR>
au FileType cpp nnoremap <silent> ;tm :VimuxRunCommand "make build -j 10"<CR>
au FileType cpp nnoremap <silent> ;tr :VimuxRunCommand "make run -j 10"<CR>
au FileType cpp nnoremap <silent> ;tc :VimuxRunCommand "make clean && make run -j 10"<CR>

au FileType zig nnoremap <silent> ;m :make<CR>
au FileType zig nnoremap <silent> ;r :make run<CR>

" C++ helpers

" switch between hpp and cpp
au BufEnter,BufNew *.cpp nnoremap <silent> ;p :e %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;p :e %<.cpp<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> ;vp :leftabove vs %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;vp :rightbelow vs %<.cpp<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> ;xp :leftabove split %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;xp :rightbelow split %<.cpp<CR>

" surround with std::optional
nnoremap <silent> ;cso :execute 's/\(' . expand('<cWORD>') . '\)/std::optional<\1>'<CR>:noh<CR>

" zig config
au FileType zig nmap <Leader>dt <cmd>lua vim.lsp.buf.definition()<CR>
au FileType zig nmap <Leader>h  <cmd>lua vim.lsp.buf.hover()<CR>
au FileType zig nmap <Leader>p  <cmd>lua vim.lsp.buf.signature_help()<CR>
au FileType zig nmap <Leader>gd  <cmd>lua vim.lsp.buf.document_symbol()<CR>
au FileType zig setlocal omnifunc=v:lua.vim.lsp.omnifunc

" enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" easy-motion
" disable default mappings, turn on case-insensitivity
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" find character
nmap .s <Plug>(easymotion-overwin-f)

" find 2 characters
nmap .d <Plug>(easymotion-overwin-f2)

" global word find
nmap .g <Plug>(easymotion-overwin-w)

" t/f (find character on line)
nmap .t <Plug>(easymotion-tl)
nmap .f <Plug>(easymotion-fl)

" move to start of line when jumping lines
let g:EasyMotion_startofline = 1

" jk/l motions: Line motions
nmap .j <Plug>(easymotion-j)
nmap .k <Plug>(easymotion-k)
nmap ./ <Plug>(easymotion-overwin-line)

nmap .a <Plug>(easymotion-jumptoanywhere)

" faster updates!
set updatetime=100

" no hidden buffers
set hidden&

" public copy/paste register
set clipboard=unnamedplus

" automatically read on change
set autoread

" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" ;t is trim
nnoremap ;t <silent> :Trim<CR>

" easy search
nnoremap ;s :s/

" easy search/replace with current visual selection
xnoremap ;s y:%s/<C-r>"//g<Left><Left>

" easy search/replace on current line with visual selection
xnoremap ;ls y:.s/<C-r>"//g<Left><Left>

" ;w is save
noremap <silent> ;w :update<CR>

";f formats in normal mode
noremap <silent> ;f gg=G``:w<CR>

" language-specific formatters
au FileType cpp set formatprg=clang-format | set equalprg=clang-format

let g:lion_squeeze_spaces = 1

" no folds, ever
set foldlevelstart=99

" rainbow parens
let g:rainbow_active = 1

" rust config
let g:rustfmt_autosave = 1

set nocompatible
let c_no_curly_error=1

" Python
let g:python3_host_prog="/usr/local/bin/python3"

" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

" fzf in runtimepath
set rtp+=/usr/local/opt/fzf

" Use ripgrep as grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Colorscheme
set termguicolors
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
hi LspCxxHlGroupMemberVariable guifg=#83a598

" alt-a as esc-a for select
nmap <esc>a <a-a>

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Ctrl-k closes all floating windows in normal mode
nmap <c-k> call coc#float#close_all()

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Map insert mode CTRL-{hjkl} to arrows
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

" Function to set tab width to n spaces
function! SetTab(n)
  let &tabstop=a:n
  let &shiftwidth=a:n
  let &softtabstop=a:n
  set expandtab
  set autoindent
  set smartindent
endfunction

command! -nargs=1 SetTab call SetTab(<f-args>)

set noexpandtab
set autoindent
set smartindent

" Function to trim extra whitespace in whole file
function! Trim()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

set laststatus=2

" Highlight search results
set nohlsearch
set incsearch

" toggle higlight
nnoremap <leader>th :set invhlsearch <cr>

set t_Co=256

" Binary files -> xxd
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

" colorcolumn 80 when opening C/C++
autocmd BufRead,BufNewFile *.c setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.h setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.cpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.hpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.c SetTab 4
autocmd BufRead,BufNewFile *.h SetTab 4
autocmd BufRead,BufNewFile *.cpp SetTab 4
autocmd BufRead,BufNewFile *.hpp SetTab 4

" C/C++ indent options: fix extra indentation on function continuation
set cino=(0,W4

" colorcolumn 80, tab width 4 for shaders
autocmd BufRead,BufNewFile *.sc setlocal colorcolumn=80 | SetTab 4

" nim config
autocmd BufRead,BufNewFile *.nim  setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.nims setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.nim SetTab 2
autocmd BufRead,BufNewFile *.nims SetTab 2

" .can == CAN
augroup can
  au!
  autocmd BufNewFile,BufRead *.can    set syntax=c
augroup END

" ASM == JDH8
augroup jdh8_ft
  au!
  autocmd BufNewFile,BufRead *.asm    set filetype=jdh8
augroup END

" SQL++ == SQL
augroup sqlpp_ft
  au!
  autocmd BufNewFile,BufRead *.sqlp   set syntax=sql
augroup END

" .S == gas
augroup gas_ft
  au!
  autocmd BufNewFile,BufRead *.S      set syntax=gas
augroup END

" .vs = glsl
augroup vs_ft
  au!
  autocmd BufNewFile,BufRead *.vs     set syntax=glsl
augroup END

" .fs = glsl
augroup fs_ft
  au!
  autocmd BufNewFile,BufRead *.fs     set syntax=glsl
augroup END

" .sc = glsl
augroup sc_ft
  au!
  autocmd BufNewFile,BufRead *.sc     set filetype=glsl
augroup END

" JFlex syntax highlighting
augroup jfft
  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex
augroup END
au Syntax jflex    so ~/.vim/syntax/jflex.vim

" Mouse support
set mouse=a

" Map F8 to Tagbar
nmap <F8> :TagbarToggle<CR>

" disable backup files
set nobackup
set nowritebackup

set shortmess+=c

set signcolumn=yes

au FileType text set colorcolumn=80

" show syntax group of symbol under cursor
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:NERDTreeGitStatusWithFlags = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCustomDelimiters = { 'c': {'left': '//'} }
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
let g:NERDTreeGitStatusWithFlags = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>br :vsplit /tmp/brestore.gdb<cr>
nnoremap <leader>cg :vsplit /tmp/cmd.gdb<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sc :set syntax=c<cr>

nnoremap ;sh :split<cr>
nnoremap ;sj :vsplit<cr>

" Find files using Telescope command-line sugar.
nnoremap <c-p> <cmd>lua require("telescope.builtin").find_files({hidden = true, no_ignore = true, file_ignore_patterns = {"^.git/"},}) <cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>n :/\<<C-r><C-w>\><cr>
vnoremap <leader>n y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <c-s> :w<cr>
inoremap <c-s> <ESC>:w<CR>

nnoremap <c-b> :NERDTreeToggle<cr>
nnoremap <leader><c-b> :NERDTreeFind<cr>
nnoremap <leader>w :wq<cr>
"nnoremap <c-w> :wq<cr>
nnoremap <leader>q :q!<cr>
nnoremap <c-q> :q!<cr>
nnoremap <leader><F3> :q!<cr>
nnoremap <leader>vt :vsplit <bar> :term<cr>
nnoremap <leader>ht :set splitbelow <bar> :split <bar> :term<cr>
nnoremap <leader>ft :FloatermNew! --title=Terminal<cr>

map <C-z> <plug>NERDCommenterToggle<CR>

" run code for CP
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <leader><f4> :FloatermNew! python3 % <cr>
    autocmd filetype cpp nnoremap <leader><f4> :w <bar> !g++ -std=c++2a % <cr> :FloatermNew  --title=CPP "./a.out" <cr>
    autocmd filetype cpp nnoremap <leader><f5> :w <bar> :FloatermNew! --title=Terminal g++ -g -Wall -std=c++1z % <cr>
    autocmd filetype c nnoremap <leader><f4> :w <bar> !gcc -Wall % <cr> :FloatermNew --title=C "./a.out" <cr>
    autocmd filetype c nnoremap <leader><f5> :w <bar> :FloatermNew! --title=Terminal gcc -g -Wall % <cr>
    "-std=c++1x #2011 -std=c++1y #2014 -std=c++1z #2017 -std=c++2a #2020
augroup END

" moves current line down or up
nnoremap <leader>] ddp
nnoremap <leader>[ ddkP

vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>. :bn<cr>
nnoremap <leader>, :bp<cr>
nnoremap <leader>m :bd<cr>

nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>_ :resize -5<CR>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>rp :resize 100<CR>

nmap <leader>gs :vertical G<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<cR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

vnoremap <leader>p "_dP<cr>
nnoremap <leader>d "_d<cr>
vnoremap <leader>d "_d<cr>

" Copy from this point to the end of the line
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ( (<c-g>u
inoremap [ [<c-g>u
inoremap ) )<c-g>u
inoremap ] ]<c-g>u
inoremap ? ?<c-g>u

" jumplist mutations
nnoremap <expr> k (v:count > 5? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5? "m'" . v:count : "") . 'j'


let t:is_transparent = 0

" entering with transparency
autocmd VimEnter * :call Toggle_transparent_background()

function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    let t:is_transparent = 1
    set background=dark
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction

nnoremap <leader><c-p> :lua require("telescope.builtin").find_files({hidden = true, file_ignore_patterns = {"^.git/"}, prompt_title = "~Dotfiles",cwd = "$HOME/versioning/dotfiles",}) <cr>

nnoremap <leader>tb :call Toggle_transparent_background()<CR>

set noswapfile
" Give more space for displaying messages.
set cmdheight=2

nmap ghj <Plug>(GitGutterNextHunk)
nmap ghk <Plug>(GitGutterPrevHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nmap <leader>tgh :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_show_msg_on_hunk_jumping = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
nnoremap <leader>gds :vertical Gdiffsplit<CR>

let g:context_enabled = 1
let g:context_filetype_blacklist = []
nnoremap <leader>ct :ContextToggle<cr>

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

"let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'jellybeans'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:blamer_enabled = 0
let g:blamer_delay = 500
nnoremap <leader>tg :BlamerToggle <cr>
