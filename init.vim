
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

" call dein#add('svermeulen/vim-yoink')
" call dein#add('Shougo/deoplete.nvim')

" call dein#add('hackhowtofaq/vim-solargraph')
" call dein#add('dbakker/vim-projectroot')

" This language client actually makes use of a binary, hence the `install.sh`.
" We also need the `next` branch in order to specify
" a language server's TCP port at the time of writing
" call dein#add('autozimu/LanguageClient-neovim', { 'branch': 'next', 'build': 'bash install.sh' })
" let g:LanguageClient_autoStop = 0
" let g:LanguageClient_serverCommands = { 'ruby': ['solargraph', 'stdio'] }
" autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

" nvim Completion Manager
call dein#add('ncm2/ncm2')
call dein#add('roxma/nvim-yarp')
" call dein#add('ncm2/ncm2-neoinclude')
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " autocmd TextChangedI * call ncm2#auto_trigger()
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
  call dein#add('fgrsnau/ncm2-otherbuf')
  " call dein#add('ncm2/ncm2-html-subscope')
  call dein#add('ncm2/ncm2-markdown-subscope')
  call dein#add('ncm2/ncm2-tern')
  call dein#add('ncm2/ncm2-cssomni')
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

call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-tbone')

call dein#add('isRuslan/vim-es6')
call dein#add('pangloss/vim-javascript')
call dein#add('posva/vim-vue')
call dein#add('stephpy/vim-yaml')

call dein#add('luochen1990/rainbow')

call dein#add('tpope/vim-endwise')
" https://github.com/roxma/nvim-completion-manager/issues/49#issuecomment-285923119
let g:endwise_no_mappings = 1
imap <C-X><CR>   <CR><Plug>AlwaysEnd
imap <expr> <CR> (pumvisible() ? "\<C-Y>\<CR>\<Plug>DiscretionaryEnd" : "\<CR>\<Plug>DiscretionaryEnd")

call dein#add('tpope/vim-bundler')
call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails')
  command! Eroutes Einitializer
  command! Rroutes Einitializer
  let g:rails_projections = {
        \ "app/services/*.rb": {
        \   "command": "service",
        \   "template": ["class {camelcase|capitalize|colons}", "end"],
        \   "test": [ "spec/services/{}_spec.rb" ],
        \   "rubyMacro": ["process", "version"]
        \ }
        \}
  let g:rails_projections = {
        \ "app/javascript/*.js": {
        \   "command": "pack",
        \ }
        \}
  let g:rails_projections = {
        \ "app/decorators/*_decorator.rb": {
        \   "command": "decorator",
        \   "related": "app/models/{}.rb",
        \   "affinity": "model",
        \   "test": "spec/decorators/%s_spec.rb",
        \   "template": [
        \     "class {camelcase|capitalize|colons}Decorator < Draper::Decorator",
        \     "end"
        \   ],
        \   "keywords": "delegate_all decorates_association object h"
        \ }
        \ }

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

call dein#add('~/.fzf')
call dein#add('junegunn/fzf.vim')
nnoremap <silent> <c-p> :Files<CR>
nnoremap <silent> <c-b> :Buffers<CR>

" call dein#add('ctrlpvim/ctrlp.vim')
"   " CtrlP
"   let g:ctrlp_map = '<c-f>'
"   let g:ctrlp_cmd = 'CtrlP'
"   nmap <c-p> <Esc>:CtrlP<CR>
"   nmap <c-b> <Esc>:CtrlPBuffer<CR>
"   set wildignore+=*/tmp/*,*/coverage/*,*.so,*.swp,*.zip,*.cache,*.gz,/node_modules
"   let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"   let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"   if executable('ag')
"     let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"     "let g:ctrlp_user_command = 'rg'
"   endif

call dein#add('junegunn/vim-easy-align')
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-repeat')

" neomake
" call dein#add('neomake/neomake')
"   autocmd! BufReadPost,BufWritePost * Neomake
"   call neomake#configure#automake('w')
"   let g:neomake_logfile = '/tmp/neomake.log'
"   let g:neomake_ruby_enabled_makers = ['rubocop']

call dein#add('kopischke/vim-fetch')

" ag
" call dein#add('rking/ag.vim')

" Find and Replace
call dein#add('brooth/far.vim')
" :Far foo bar **/*.py
" :Fardo

call dein#add('moll/vim-bbye')
call dein#add('bogado/file-line')

" call dein#add('vim-syntastic/syntastic')
"   " set statusline+=%#warningmsg#
"   " set statusline+=%{SyntasticStatuslineFlag()}
"   " set statusline+=%*
" 
"   " let g:syntastic_always_populate_loc_list = 1
"   " let g:syntastic_auto_loc_list = 1
"   let g:syntastic_check_on_open = 1
"   let g:syntastic_check_on_wq = 0
" 
"   let g:syntastic_ruby_checkers = ['rubocop', 'mri']

call dein#add('w0rp/ale')
let g:ale_lint_on_text_changed = 'never'

call dein#add('scrooloose/nerdtree')

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

" --------- Mappings ------------------
nnoremap <Space> za
nnoremap <silent><F2> :!rspec %<CR>
nnoremap <silent> <F5> <Esc> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR> :redraw! <CR>
nnoremap <silent> <F6> <Esc> :RainbowToggle <CR>
tnoremap <Esc> <C-\><C-n>

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
