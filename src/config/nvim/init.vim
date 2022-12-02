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
source ~/.config/nvim/filetypes.vim

set nocompatible
set noshowmode
set formatoptions-=cro
""------- Visual -------
set title
" Turn on syntax highlighting
syntax enable
" Set colorscheme

set termguicolors
colorscheme nord

highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey" Turn on line numbers

set number
set background=dark
set cursorline
set foldcolumn=1
set wildmenu
set wildmode=list:longest,full
" Show the mode
set showmode
"" Show executed commands
set showcmd
"" Always show status line
 "set laststatus=2
" Always show tab bar
set showtabline=2
" show matching brackets
set showmatch
" and how long to flash brackets
set mat=2

" use system clipboard
set clipboard=unnamedplus

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

" fold based on indent
set foldmethod=indent
" disable folding
set nofoldenable

" autosource .vimrc
if (!exists('*SourceConfig'))
  function SourceConfig() abort
    " Your path will probably be different
    for f in split(glob('~/.config/nvim/autoload/*'), '\n')
      exe 'source' f
    endfor

    source $MYVIMRC
  endfunction
endif

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

:autocmd BufWritePost ~/.config/nvim/*.vim execute SourceConfig() %:p

highlight Normal guibg=none
highlight NonText guibg=none
