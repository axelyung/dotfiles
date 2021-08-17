" source .vimrc file securely
set exrc
set secure

" set leader key
nnoremap <Space> <NOP>
let mapleader = "\<Space>"

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/commands.vim

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax on
set nocompatible
set noshowmode
set formatoptions-=cro
""------- Visual -------
set title
" Turn on syntax highlighting
syntax enable
" Set colorscheme
set termguicolors
colorscheme onedark
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey" Turn on line numbers
set number
"" Dark backgrounds
"set background=dark
" Bold the line I am currently on
set cursorline
" Add side padding column
set foldcolumn=1
" Enable wild menu (menu box)
set wildmenu
set wildmode=list:longest,full
" Show the mode
set showmode
"" Show executed commands
"set showcmd
"" Always show status line
 "set laststatus=2
" Always show tab bar
set showtabline=2
" show matching brackets
set showmatch
" and how long to flash brackets
set mat=2

" use system clipboard
set clipboard=unnamed

" Set file encoding
set encoding=utf8
" Set file format order
set ffs=unix,mac,dos
" File type detection
filetype plugin on
" File type based indents
filetype indent on
" Reload a file when externally changed
set autoread
au FocusGained,BufEnter * checktime

set noerrorbells
set visualbell

set directory=$HOME/.vim/swp//
set backupdir=~/.vim/backup//

if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undodir=~/.vim/undodir
set undofile

set softtabstop=2
set shiftwidth=4
set tabstop=4
set autoindent
set nowrap

set incsearch
set hlsearch
set ignorecase
set smartcase

set scrolloff=10
set sidescrolloff=5

set shell=zsh
set backspace=indent,eol,start
set showcmd

:au FocusLost * :wa

" Backup files are just clutter
set noswapfile

set inccommand=nosplit

set splitbelow
set splitright

" Disable quote concealing in JSON files
let g:vim_json_conceal=0
let g:vim_json_syntax_conceal=0
set conceallevel=0

" python host setup
let g:python2_host_prog = '/Users/axelyung/.pyenv/shims/python2'
let g:python3_host_prog = '/Users/axelyung/.pyenv/shims/python3'

" fold based on indent
set foldmethod=indent
" disable folding
set nofoldenable
