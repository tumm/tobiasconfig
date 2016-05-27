call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'marijnh/tern_for_vim'
Plug 'tomtom/tcomment_vim'
Plug 'tmhedberg/matchit'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

call plug#end()

set mouse=""
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*attic*,*inplay_admin*,*pyc,*gimp*,*bfpy*,*tiki*,*_test*,*build*
set laststatus=2
set undodir=~/.vim_runtime/undodir
set undofile

set ts=4
set sw=4
set expandtab
set autoindent


let g:better_whitespace_filetypes_blacklist=['python']
autocmd Filetype javascript set sw=4 ts=4 noexpandtab
autocmd Filetype html set sw=4 ts=4 noexpandtab
autocmd Filetype haskell set sw=2 ts=2 expandtab

" vim-plug
set runtimepath+=$HOME/.config/nvim/plugged/deoplete.nvim
set completeopt+=noinsert,noselect
set completeopt-=preview

hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41

let g:deoplete#enable_at_startup = 1

filetype plugin indent on
