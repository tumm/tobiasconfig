execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'cra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*attic*,*inplay_admin*,*pyc,*gimp*,*bfpy*,*tiki*,*_test*,*build*

set sw=4
set ts=4
set expandtab
set autoindent
