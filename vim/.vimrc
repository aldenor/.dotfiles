set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-signify'
Plugin 'DirDiff.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'kien/ctrlp.vim'
"Plugin 'xuhdev/SingleCompile'
"Plugin 'sjl/gundo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable color formattation
syntax enable

" Enable 256 colors
set t_Co=256

" show line number
set number

" It's 2014.
noremap j gj
noremap k gk

" hidden characters
set list listchars=tab:»\ ,trail:·

" highlight current line
set cursorline

" smart incremental search
set ignorecase
set smartcase
set incsearch

" highlight search
set hlsearch
" Clear search highlighting
map <C-l> :nohlsearch<CR>

" netrw
let g:netrw_liststyle=3
map <leader>k :Explore<CR>

" always show airline
set laststatus=2

" Signify
let g:signify_vcs_list = ['git']

" Theme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Wrap lines when using vimdiff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

" Disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Custom vim-unimpaired
nnoremap <q :cprevious<CR>
nnoremap >q :cnext<CR>
nnoremap <Q :cfirst<CR>
nnoremap >Q :clast<CR>

" jj for esc
inoremap jj <Esc>

" SingleCompile bindings
" nmap <F9> :SCCompile<cr>
" nmap <F10> :SCCompileRun<cr>

" Gundo binding
" nnoremap <F5> :GundoToggle<CR>

" bind ctrl+p with CtrlP
" let g:ctrlp_map = '<c-p>'

