filetype on 
filetype plugin on
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set foldmethod=indent
set number
set history=250
set incsearch

set undofile
set undodir=~/vimundo

set autochdir

syntax on
filetype indent on
colorscheme desert
set scrolloff=8

set laststatus=2
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

set splitright

let mapleader=" "
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

let perl_include_pod=1
let perl_extended_vars=1
" easy tab navigation
nnoremap <Left> gT
nnoremap <Right> gt

inoremap jj <esc>

" SEARCHING
" remove search highlighting
nnoremap <esc><esc> :noh<return><esc>
" search and replace current word
nnoremap <Leader><Space> :'{,'}s/\<<C-r>=expand("<cword>")<CR>\>/

"next in search will center on found line
map n nzz
map N Nzz

" toggle line numbers
nnoremap <Leader>n :set number!<CR>


autocmd BufWritePost .vimrc,_vimrc,vimrc so $MYVIMRC
