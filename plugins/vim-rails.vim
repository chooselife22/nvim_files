command! Eroutes Einitializer
command! Rroutes Einitializer
" https://raw.githubusercontent.com/tpope/vim-rails/master/doc/rails.txt
let g:rails_projections = {
      \ "spec/fabricators/*_fabricator.rb": {
      \   "command": "fabricator",
      \   "related": "app/models/{}.rb",
      \   "affinity": "model",
      \   "template": [ "Fabricator :{} do", "end"],
      \   "keywords": "delegate_all decorates_association object h"
      \ },
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
      \ },
      \ "app/javascript/*.js": {
      \   "command": "pack",
      \ },
      \ "app/services/*.rb": {
      \   "command": "service",
      \   "template": ["class {camelcase|capitalize|colons}", "end"],
      \   "test": [ "spec/services/{}_spec.rb" ],
      \   "rubyMacro": ["process", "version"]
      \ }
      \ }
