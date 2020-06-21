"set completeopt=longest,menuone

" number of lines at the beginning and end of files checked for file-specific vars
set modelines=0

" use Unicode
set encoding=utf-8

" line numbers and distances
set number

set relativenumber

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
" ---------------------------------------------------------------------------
" drop vi support - kept for vim compatibility but not needed for nvim
" set the runtime path to include Vundle and initialize
" ---------- dein ------------
if &compatible
  set nocompatible
endif
