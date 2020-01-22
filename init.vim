
" vim  : place in $HOME/.vimrc
" nvim : place in $HOME/.config/nvim/init.vim
" General settings
" ---------------------------------------------------------------------------
" drop vi support - kept for vim compatibility but not needed for nvim
" set the runtime path to include Vundle and initialize
" ---------- dein ------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin( '~/.cache/dein')
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('wsdjeg/dein-ui.vim')

call dein#add('neoclide/coc.nvim', {'merge':0, 'build': 'yarn install --frozen-lockfile'})
source ~/.config/nvim/plugins/coc.vim
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-tbone')
call dein#add('tpope/vim-vinegar')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-bundler')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-repeat')
call dein#add('isRuslan/vim-es6')
call dein#add('pangloss/vim-javascript')
call dein#add('posva/vim-vue')
  autocmd FileType vue syntax sync fromstart
call dein#add('digitaltoad/vim-pug')
call dein#add('stephpy/vim-yaml')
call dein#add('luochen1990/rainbow')
call dein#add('vim-ruby/vim-ruby')
source ~/.config/nvim/plugins/vim-rails.vim
call dein#add('slim-template/vim-slim')
  autocmd FileType slim setlocal foldmethod=indent
call dein#add('kchmck/vim-coffee-script')
call dein#add('mattn/emmet-vim')
let g:user_emmet_leader_key='<C-Z>'
call dein#add('mhartington/oceanic-next')
call dein#add('arcticicestudio/nord-vim')
call dein#add('sickill/vim-monokai')
call dein#add('Lokaltog/vim-distinguished')
call dein#add('29decibel/codeschool-vim-theme')
call dein#add('morhetz/gruvbox')
call dein#add('vim-airline/vim-airline')
  " Airline required
  set laststatus=2
call dein#add('~/.fzf')
call dein#add('junegunn/fzf.vim')
nnoremap <silent> <c-p> :Clap! files<CR>
nnoremap <silent> <c-b> :Clap! buffers<CR>
call dein#add('junegunn/vim-easy-align')
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
call dein#add('kopischke/vim-fetch')
call dein#add('brooth/far.vim')
  " :Far {pattern} {replace-with} {file-mask} [params]
  " Find the text to replace.
  " :Farp [params]
  " Same as Far, but allows to enter {pattern}, {replace-with} and {file-mask} one after the other.
  " :Fardo [params]
  " Runs the replacement task.
  " :Refar [params]
  " Change Far/Farp params.
  " :F {pattern} {file-mask} [params]
  " Find only.
  let g:far#source = 'rgnvim'
  let g:far#source = 'rg'

call dein#add('moll/vim-bbye')
call dein#add('bogado/file-line')
call dein#add('benmills/vimux')
let g:VimuxHeight = "30"
let g:VimuxOrientation = "h"
call dein#add('janko/vim-test')
let test#strategy = "vimux"
  " :TestNearest -> nearest to the cursor
  nnoremap <silent> <leader>tn :TestNearest<CR>
  " :TestFile -> all in current file
  nnoremap <silent> <leader>tf :TestFile<CR>
  " :TestSuite -> all
  nnoremap <silent> <leader>ts :TestSuite<CR>
  " :TestLast -> only last test
  nnoremap <silent> <leader>tl :TestLast<CR>
  " :TestVisit -> test file from which last tests were run from
  nnoremap <silent> <leader>tv :TestVisit<CR>
call dein#add('w0rp/ale')
source ~/.config/nvim/plugins/ale.vim
call dein#add('scrooloose/nerdtree',
      \{'on_cmd':'NERDTreeToggle'})
  nmap <silent> <C-E> :NERDTreeToggle<CR>
  let g:NERDTreeChDirMode=2
call dein#add('liuchengxu/vim-clap')
" call dein#add('drzel/vim-split-line')
nnoremap S :keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>
call dein#add('dstein64/vim-win')
  map <leader>w <plug>WinWin
  command Win :call win#Win()
  let g:win_ext_command_map = {
      \   'c': 'wincmd c',
      \   'C': 'close!',
      \   'q': 'quit',
      \   'Q': 'quit!',
      \   '!': 'qall!',
      \   'V': 'wincmd v',
      \   'S': 'wincmd s',
      \   'n': 'bnext',
      \   'N': 'bnext!',
      \   'p': 'bprevious',
      \   'P': 'bprevious!',
      \   "\<c-n>": 'tabnext',
      \   "\<c-p>": 'tabprevious',
      \   '=': 'wincmd =',
      \   't': 'tabnew',
      \   'x': 'Win#exit',
      \   "\<cr>": 'Win#exit'
      \ }

" Required:
call dein#end()
call dein#save_state()

" Required:
syntax enable
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" ----------- nied --------------

" completion option
"set completeopt=longest,menuone

" number of lines at the beginning and end of files checked for file-specific vars
set modelines=0

" use Unicode
set encoding=utf-8

" line numbers and distances
set number

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 smarttab

" Indent new line the same as the preceding line
set autoindent

" statusline indicates insert or normal mode
set showmode showcmd

" escape character in prompt https://github.com/neovim/neovim/issues/6041
set guicursor=

" highlight matching parens, braces, brackets, etc
set showmatch

" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" set autochdir

" http://vim.wikia.com/wiki/Searching
set hlsearch incsearch ignorecase smartcase

" Use system clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set clipboard=unnamedplus
  noremap <Leader>y "+y
  noremap <Leader>p "+p

" Colors
" if has("termguicolors")
"   set termguicolors
" endif
" if &term =~# '^screen'
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" endif
" set t_Co=256
" set t_ut=
set background=dark
colorscheme gruvbox

" Font
set guifont=DejaVu\ Sans\ Mono

set foldmethod=syntax
set foldlevel=20

set hidden

set list
set listchars=trail:-

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" --------- Leader Commands -----------
nnoremap <silent> <leader>ec :e ~/.config/nvim/init.vim <CR>
nnoremap <silent> <leader>rc :so ~/.config/nvim/init.vim <CR>
nnoremap <Leader>q :Bdelete<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <leader>y "+y

" --------- Mappings ------------------
nnoremap <Space> za
nnoremap <silent> <F5> <Esc> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR> :redraw! <CR>
nnoremap <silent> <F6> <Esc> :RainbowToggle <CR>
"tnoremap <Esc> <C-\><C-n>

" --------- gf for webpack js -------------------
au BufNewFile,BufRead *app/javascript/*.js
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.vue,.json,.scss
au BufNewFile,BufRead *app/javascript/*.vue
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |

" --------- Terminal Mode ---------
tnoremap <C-J> <C-\><C-n><C-W><C-J>
tnoremap <C-K> <C-\><C-n><C-W><C-K>
tnoremap <C-L> <C-\><C-n><C-W><C-L>
tnoremap <C-H> <C-\><C-n><C-W><C-H>
tnoremap <Esc> <C-\><C-n>

" -------- Tab it like it`s hot ---------
" set mouse+=a
" nmap <C-Tab> gt
" nmap <C-W> <Esc> :tabclose<CR>
