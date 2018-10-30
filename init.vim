" NVim Configuration File
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

" Required:
call dein#begin( '~/.cache/dein')

" Required:
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

call dein#add('wsdjeg/dein-ui.vim')

" call dein#add('Shougo/deoplete.nvim')

" nvim Completion Manager
call dein#add('ncm2/ncm2')
call dein#add('roxma/nvim-yarp')
" call dein#add('ncm2/ncm2-neoinclude')
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " " Use <TAB> to select the popup menu:
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  inoremap <expr> <CR> pumvisible() ? "\<c-y>\<cr>" : "\<CR>"

  " set shortmess+=c
  " inoremap <c-c> <ESC>

  call dein#add('ncm2/ncm2-bufword')
  call dein#add('ncm2/ncm2-path')
  call dein#add('ncm2/ncm2-tmux')
  " call dein#add('ncm2/ncm2-html-subscope')
  call dein#add('ncm2/ncm2-markdown-subscope')
  " call dein#add('ncm2/ncm2-tern')
  " call dein#add('ncm2/ncm2-cssomni')
  " call dein#add('ncm2/ncm2-syntax')

  " call dein#add('ncm2/ncm2-match-highlight')
  " call dein#add('ncm2/ncm2-ultisnips')
  " call dein#add('SirVer/ultisnips')
  " call dein#add('honza/vim-snippets')

  " " inoremap <silent> <expr> <CR> ((pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : (!empty(v:completed_item) ? ncm2_ultisnips#expand_or("", 'n') : "\<CR>" ))

  " " c-j c-k for moving in snippet
  " imap <expr> <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
  " smap <c-u> <Plug>(ultisnips_expand)
  " let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
  " let g:UltiSnipsJumpForwardTrigger = "<c-j>"
  " let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
  " let g:UltiSnipsRemoveSelectModeMappings = 0

" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')

call dein#add('luochen1990/rainbow')

call dein#add('tpope/vim-endwise')
" https://github.com/roxma/nvim-completion-manager/issues/49#issuecomment-285923119
let g:endwise_no_mappings = 1
imap <C-X><CR>   <CR><Plug>AlwaysEnd
imap <expr> <CR> (pumvisible() ? "\<C-Y>\<CR>\<Plug>DiscretionaryEnd" : "\<CR>\<Plug>DiscretionaryEnd")

call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails')
  command! Eroutes Einitializer
  command! Rroutes Einitializer

call dein#add('slim-template/vim-slim')

" You can specify revision/branch/tag.
call dein#add('mhartington/oceanic-next')
call dein#add('arcticicestudio/nord-vim')
call dein#add('sickill/vim-monokai')
call dein#add('Lokaltog/vim-distinguished')
call dein#add('29decibel/codeschool-vim-theme')
call dein#add('morhetz/gruvbox')

call dein#add('vim-airline/vim-airline')
  " Airline required
  set laststatus=2

call dein#add('ctrlpvim/ctrlp.vim')
  " CtrlP
  let g:ctrlp_map = '<c-f>'
  let g:ctrlp_cmd = 'CtrlP'

  nmap <c-b> <Esc>:CtrlPBuffer<CR>

call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')

" ag silver-searcher
call dein#add('mileszs/ack.vim')
let g:ack_default_options=" -H --nocolor --nogroup --column"
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" ----------- nied --------------

" number of lines at the beginning and end of files checked for file-specific vars
set modelines=0

" use Unicode
set encoding=utf-8

" line numbers and distances
set number

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

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

" Colors
syntax enable
set background=dark
colorscheme gruvbox

" Font
set guifont=DejaVu\ Sans\ Mono

" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

set foldmethod=syntax
set foldlevel=20

set hidden

set list
set listchars=trail:-

" --------- Leader Commands -----------
nnoremap <silent> <leader>ec :e ~/.config/nvim/init.vim <CR>
nnoremap <silent> <leader>rc :so ~/.config/nvim/init.vim <CR>
nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" --------- Mappings ------------------
nnoremap <Space> za
nnoremap <silent> <F5> <Esc> :redraw! <CR> :nohl <CR>
nnoremap <silent> <F6> <Esc> :RainbowToggle <CR>

" --------- Rename3 -------------------
command! -nargs=* -complete=file -bang Rename :call Rename("<args>", "<bang>")
function! Rename(name, bang)
    let l:curfile = expand("%:p")
    let l:curfilepath = expand("%:p:h")
    let l:newname = l:curfilepath . "/" . a:name
    let v:errmsg = ""
    silent! exec "saveas" . a:bang . " " . fnameescape(l:newname)
    if v:errmsg =~# '^$\|^E329'
        if expand("%:p") !=# l:curfile && filewritable(expand("%:p"))
            silent exec "bwipe! " . fnameescape(l:curfile)
            if delete(l:curfile)
                echoerr "Could not delete " . l:curfile
            endif
        endif
    else
        echoerr v:errmsg
    endif
endfunction
