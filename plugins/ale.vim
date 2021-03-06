let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {
\   'ruby': ['rubocop'],
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'javascript': ['eslint'],
\   'es6': ['eslint'],
\   'vue': ['eslint'],
\}

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

nmap <silent> <leader>af :ALEFix<cr>
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>al :ALELint<cr>
