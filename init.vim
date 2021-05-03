runtime settings.vim
runtime utilities.vim

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin( '~/.cache/dein')
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" https://github.com/wsdjeg/dein-ui.vim
" :DeinUpdate
call dein#add('wsdjeg/dein-ui.vim')

" https://github.com/tpope/vim-surround
" example: cs"'
call dein#add('tpope/vim-surround')

" https://github.com/tpope/vim-commentary
" gc<target-of-motion>
" gcap - comment out paragraph
call dein#add('tpope/vim-commentary')

" https://github.com/tpope/vim-eunuch
" :Delete: Delete a buffer and the file on disk simultaneously.
" :Unlink: Like :Delete, but keeps the now empty buffer.
" :Move: Rename a buffer and the file on disk simultaneously.
" :Rename: Like :Move, but relative to the current file's containing directory.
" :Chmod: Change the permissions of the current file.
" :Mkdir: Create a directory, defaulting to the parent of the current file.
" :Cfind: Run find and load the results into the quickfix list.
" :Clocate: Run locate and load the results into the quickfix list.
" :Lfind/:Llocate: Like above, but use the location list.
" :Wall: Write every open window. Handy for kicking off tools like guard.
" :SudoWrite: Write a privileged file with sudo.
" :SudoEdit: Edit a privileged file with sudo.
" File type detection for sudo -e is based on original file name.
" New files created with a shebang line are automatically made executable.
call dein#add('tpope/vim-eunuch')

" https://github.com/tpope/vim-endwise
" This is a simple plugin that helps to end certain structures automatically.
call dein#add('tpope/vim-endwise')

" https://github.com/tpope/vim-repeat
" Repeat.vim remaps . in a way that plugins can tap into it.
call dein#add('tpope/vim-repeat')

" https://github.com/tpope/vim-bundler
" :Bundle, which wraps bundle.
" An internalized version of bundle open: :Bopen (and :Bsplit, :Btabedit, etc.).
" 'path' and 'tags' are automatically altered to include all gems from your bundle. (Generate those tags with gem-ctags!)
" Highlight Bundler keywords in Gemfile.
" Support for gf in Gemfile.lock, plus syntax highlighting that distinguishes between installed and missing gems.
" Support for projectionist.vim, including projections based on which gems are bundled.
call dein#add('tpope/vim-bundler')

" https://github.com/tpope/vim-rails
" Easy navigation of the Rails directory structure. gf considers context and knows about partials, fixtures, and much more. There are two commands, :A (alternate) and :R (related) for easy jumping between files, including favorites like model to schema, template to helper, and controller to functional test. Commands like :Emodel, :Eview, :Econtroller, are provided to :edit files by type, along with S, V, and T variants for :split, :vsplit, and :tabedit. Throw a bang on the end (:Emodel foo!) to automatically create the file with the standard boilerplate if it doesn't exist. :help rails-navigation
" :help rails-integration
call dein#add('tpope/vim-rails')

" https://github.com/tpope/vim-tbone
" Basic tmux support for Vim.
" :Tmux lets you call any old tmux command (with really good tab complete).
" :Tyank and :Tput give you direct access to tmux buffers.
" :Twrite sends a chunk of text to another pane. Give an argument like windowtitle.2, top-right, or last, or let it default to the previously given argument.
" :Tattach lets you use a specific tmux session from outside of it.
call dein#add('tpope/vim-tbone')

" https://github.com/tpope/vim-fugitive
" The crown jewel of Fugitive is :Git (or just :G), which calls any arbitrary Git command. If you know how to use Git at the command line, you know how to use :Git. It's vaguely akin to :!git but with numerous improvements:
" :Git commit, :Git rebase -i, and other commands that invoke an editor do their editing in the current Vim instance.
" :Git diff, :Git log, and other verbose, paginated commands have their output loaded into a temporary buffer. Force this behavior for any command with :Git --paginate or :Git -p.
" :Git blame uses a temporary buffer with maps for additional triage. Press enter on a line to view the commit where the line changed, or g? to see other available maps. Omit the filename argument and the currently edited file will be blamed in a vertical, scroll-bound split.
" :Git grep loads matches into the quickfix list, just like :grep.
" :Git mergetool and :Git difftool load their changesets into the quickfix list.
" Called with no arguments, :Git opens a summary window with dirty files and unpushed and unpulled commits. Press g? to bring up a list of maps for numerous operations including diffing, staging, committing, rebasing, and stashing. (This is the successor to the old :Gstatus.)
" This command (along with all other commands) always uses the current buffer's repository, so you don't need to worry about the current working directory.
" Additional commands are provided for higher level operations:
" View any blob, tree, commit, or tag in the repository with :Gedit (and :Gsplit, etc.). For example, :Gedit HEAD~3:% loads the current file as it existed 3 commits ago.
" :Gdiffsplit brings up the staged version of the file side by side with the working tree version. Use Vim's diff handling capabilities to apply changes to the staged version, and write that buffer to stage the changes. You can also give an arbitrary :Gedit argument to diff against older versions of the file.
" :Gread is a variant of git checkout -- filename that operates on the buffer rather than the file itself. This means you can use u to undo it and you never get any warnings about the file changing outside Vim.
" :Gwrite writes to both the work tree and index versions of a file, making it like git add when called from a work tree file and like git checkout when called from the index or a blob in history.
" :GMove does a git mv on the current file and changes the buffer name to match. :GRename does the same with a destination filename relative to the current file's directory.
" :GDelete does a git rm on the current file and simultaneously deletes the buffer. :GRemove does the same but leaves the (now empty) buffer open.
" :GBrowse to open the current file on the web front-end of your favorite hosting provider, with optional line range (try it in visual mode). Plugins are available for popular providers such as GitHub, GitLab, Bitbucket, Gitee, Pagure, and Phabricator.
call dein#add('tpope/vim-fugitive')

" https://github.com/tpope/vim-vinegar
" Press - in any buffer to hop up to the directory listing and seek to the file you just came from
call dein#add('tpope/vim-vinegar')

" https://github.com/wsdjeg/vim-fetch
" vim path/to/file.ext:12:3 in the shell to open file.ext on line 12 at column 3
" :e[dit] path/to/file.ext:100:12 in Vim to edit file.ext on line 100 at column 12
" gF with the cursor at ^ on path/to^/file.ext:98,8 to edit file.ext on line 98, column 8
" gF with the selection |...| on |path to/file.ext|:5:2 to edit file.ext on line 5, column 2
call dein#add('wsdjeg/vim-fetch')

" https://github.com/airblade/vim-gitgutter
" GitGutterFold
" You can stage or undo an individual hunk when your cursor is in it:
" stage the hunk with <Leader>hs or
" undo it with <Leader>hu.
call dein#add('airblade/vim-gitgutter')
  let g:gitgutter_terminal_reports_focus = 0
  let g:gitgutter_eager = 0
  let g:gitgutter_sign_priority = 10
  function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
  endfunction
set statusline+=%{GitStatus()}

" https://github.com/neoclide/coc.nvim
call dein#add('neoclide/coc.nvim', {'merge': 0, 'rev': 'release'})
runtime plugins/coc.vim

" https://github.com/honza/vim-snippets
call dein#add('honza/vim-snippets')

" https://github.com/luochen1990/rainbow
call dein#add('luochen1990/rainbow')
nnoremap <silent> <F6> <Esc> :RainbowToggle <CR>

" https://github.com/mattn/emmet-vim
call dein#add('mattn/emmet-vim')
let g:user_emmet_leader_key='<C-Z>'

" --------------------------
"  languages
"call dein#add('isRuslan/vim-es6')
"call dein#add('pangloss/vim-javascript')
"call dein#add('posva/vim-vue')
  "autocmd FileType vue syntax sync fromstart
"call dein#add('digitaltoad/vim-pug')
"call dein#add('stephpy/vim-yaml')
"call dein#add('vim-ruby/vim-ruby')
runtime plugins/vim-rails.vim
" call dein#add('slim-template/vim-slim')
"   autocmd FileType slim setlocal foldmethod=indent
call dein#add('kana/vim-textobj-user')
call dein#add('https://github.com/whatyouhide/vim-textobj-erb')

" https://github.com/habamax/vim-gruvbit
" call dein#add('habamax/vim-gruvbit')
" colorscheme gruvbit

" https://github.com/morhetz/gruvbox
call dein#add('morhetz/gruvbox')
colorscheme gruvbox

" https://github.com/joshdick/onedark.vim
" call dein#add('joshdick/onedark.vim')
" colorscheme onedark
call dein#add('sheerun/vim-polyglot')

" https://github.com/vim-airline/vim-airline
call dein#add('vim-airline/vim-airline')
  " Airline required
  set laststatus=2
  " let g:airline_theme='onedark'

" Airline slow
let g:airline_extensions = []
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" https://github.com/junegunn/fzf.vim
call dein#add('~/.fzf')
call dein#add('junegunn/fzf.vim')
nnoremap <silent> <c-p> :Clap! files<CR>
nnoremap <silent> <c-b> :Clap! buffers<CR>

" https://github.com/brooth/far.vim
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
call dein#add('brooth/far.vim')
let g:far#source = 'rgnvim'
let g:far#source = 'rg'
let g:far#enable_undo=1

" https://github.com/moll/vim-bbye
" Instead of :bdelete and :bwipeout, use :Bdelete and :Bwipeout respectively. Fortunately autocomplete helps by sorting :Bdelete before its lowercase brother.
" As it's likely you'll be using :Bdelete often, make a shortcut to \q, for example, to save time. Throw this to your vimrc:
" :nnoremap <Leader>q :Bdelete<CR>
" Buffer delete vs wipeout
" Vim has two commands for closing a buffer: :bdelete and :bwipeout. The former removes the file from the buffer list, clears its options, variables and mappings. However, it remains in the jumplist, so Ctrl-o takes you back and reopens the file. If that's not what you want, use :bwipeout or Bbye's equivalent :Bwipeout where you would've used :bdelete.
call dein#add('moll/vim-bbye')
nnoremap <Leader>q :Bdelete<CR>

" https://github.com/dense-analysis/ale
" ALE acts as a "language client" to support a variety of Language Server Protocol features, including:
" Diagnostics (via Language Server Protocol linters)
" Go To Definition (:ALEGoToDefinition)
" Completion (Built in completion support, or with Deoplete)
" Finding references (:ALEFindReferences)
" Hover information (:ALEHover)
" Symbol search (:ALESymbolSearch)
call dein#add('dense-analysis/ale')
runtime plugins/ale.vim

" https://github.com/Shougo/deoplete.nvim
"call dein#add('Shougo/deoplete.nvim')
"if !has('nvim')
"  call dein#add('roxma/nvim-yarp')
"  call dein#add('roxma/vim-hug-neovim-rpc')
"endif
"let g:deoplete#enable_at_startup = 1
"" let g:deoplete#enable_at_startup = 0
"" autocmd InsertEnter * call deoplete#enable()
"  " https://github.com/dense-analysis/ale#usage-completion
"  call deoplete#custom#option('sources', { '_': ['ale']})

"" https://github.com/Shougo/neosnippet.vim
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"" This is an example ~/.vimrc configuration for Neosnippet. It is assumed you already have deoplete configured. With the settings of the example, you can use the following keys:
"" C-k to select-and-expand a snippet from the deoplete popup (Use C-n and C-p to select it). C-k can also be used to jump to the next field in the snippet.
"" Tab to select the next field to fill in the snippet.

"  " Plugin key-mappings.
"  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"  xmap <C-k>     <Plug>(neosnippet_expand_target)
"  " SuperTab like snippets behavior.
"  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"  "imap <expr><TAB>
"  " \ pumvisible() ? "\<C-n>" :
"  " \ neosnippet#expandable_or_jumpable() ?
"  " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" https://github.com/preservim/nerdtree
call dein#add('preservim/nerdtree')
  nmap <silent> <C-e> :NERDTreeToggle<CR>
  " let g:NERDTreeChDirMode=2

" https://github.com/liuchengxu/vim-clap
call dein#add('liuchengxu/vim-clap', { 'do': ':Clap install-binary' })
let g:clap_layout = { 'width': '67%', 'height': '33%', 'row': '33%', 'col': '17%' }
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

" https://github.com/bkad/CamelCaseMotion
" A vim script to provide CamelCase motion through words (fork of inkarkat's camelcasemotion script)
call dein#add('bkad/CamelCaseMotion')
  let g:camelcasemotion_key = '<leader>'

" https://github.com/jiangmiao/auto-pairs
" call dein#add('jiangmiao/auto-pairs')

" https://github.com/cohama/lexima.vim
" Auto close parentheses and repeat by dot dot dot...
" call dein#add('cohama/lexima.vim')
"   let g:lexima_enable_basic_rules = 1
"   let g:lexima_enable_newline_rules = 1
"   let g:lexima_enable_endwise_rules = 1 " vim-endwise

  " https://github.com/cohama/lexima.vim/issues/65 - class with deoplete
  " inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  " function! s:my_cr_function() abort
  "   " Combine deoplete's smart close with lexima's expansion.
  "   return pumvisible() ? deoplete#smart_close_popup() . "\<CR>" : lexima#expand('<CR>', 'i')
  " endfunction

call dein#add('jremmen/vim-ripgrep')

" https://github.com/AndrewRadev/splitjoin.vim
" This plugin is meant to simplify a task I've found too common in my workflow: switching between a single-line statement and a multi-line one. It offers the following default keybindings, which can be customized:
" gS to split a one-liner into multiple lines
" gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
call dein#add('AndrewRadev/splitjoin.vim')
let g:splitjoin_ruby_curly_braces = 0
let g:splitjoin_ruby_hanging_args = 0
let g:splitjoin_ruby_do_block_split = 0

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

" --------- Leader Commands -----------
nnoremap <silent> <leader>ec :e ~/.config/nvim/init.vim <CR>
nnoremap <silent> <leader>rc :so ~/.config/nvim/init.vim <CR>
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
" nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" --------- Mappings ------------------
nnoremap <Space> za
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"tnoremap <Esc> <C-\><C-n>
nnoremap S :keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>

" --------- gf for webpack js -------------------
au BufNewFile,BufRead *app/javascript/*.js
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.vue,.json,.scss
au BufNewFile,BufRead *app/javascript/*.vue
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.js,.json,.scss
au BufNewFile,BufRead *app/javascript/*.scss
      \ setl path+=app/javascript/,node_modules |
      \ setl suffixesadd+=.css,.scss,.sass |
      \ setl isfname+=@-@ |
      \ setl inex=substitute(v:fname,'^\\~','','')

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
