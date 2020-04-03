" ==========================================================
" Vundle
" ==========================================================
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
" required!

" My Bundles here:
"
" original repos on github
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tmhedberg/matchit'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
" Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_disabled_filetypes=['python']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["python"] }

" ==========================================================
" Shortcuts
" ==========================================================
" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

" Allow pasting blocks of code without indenting
set pastetoggle=<F2>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Let me save files with sudo
cmap w!! w !sudo tee % >/dev/null

let g:better_whitespace_filetypes_blacklist=['python']

set tw=0
set wm=0
set nowrap
set linebreak

" Dan was here

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
" set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*attic*,*inplay_admin*,*pyc,*gimp*,*bfpy*,*tiki*,*_test*,*build*
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256
set t_Co=256


" don't outdent hashes
inoremap # #

set ls=2

set backspace=indent,eol,start


set undodir=~/.vim_runtime/undodir
set undofile

set ts=4
set sw=4
set expandtab
set autoindent

set completeopt-=preview

set noendofline


"au BufRead *.js set makeprg=jslint\ %
" Use tab to scroll through autocomplete menus
autocmd Filetype javascript set sw=4 ts=4 noexpandtab
autocmd Filetype html set sw=4 ts=4 noexpandtab
autocmd Filetype haskell set sw=2 ts=2 expandtab
"let g:acp_completeoptPreview=1
" "
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
