" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#formatter = 'unique_tail'

Plug 'machakann/vim-highlightedyank'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-repeat'

Plug 'matze/vim-move'

Plug 'svermeulen/vim-easyclip'
let g:EasyClipUseSubstituteDefaults = 1

Plug 'thaerkh/vim-workspace'
let g:workspace_autosave_always = 1
let g:workspace_session_directory = $HOME . '/.vim/sessions/'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'zivyangll/git-blame.vim'
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

""Plug 'nelstrom/vim-visual-star-search'

Plug 'jiangmiao/auto-pairs'
let g:AutoPairsMapCR = 0

Plug 'scrooloose/nerdcommenter'

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

Plug 'wakatime/vim-wakatime'

"Plug 'yggdroot/indentline'
"let g:indentLine_enabled = 1
"let g:indentLine_char = '┊'
"let g:indentLine_color_tty_light = 7
"let g:indentLine_color_dark = 1

Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'fatih/vim-go'
let g:go_list_type = "quickfix"
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_autosave = 0
let g:go_rename_command="gopls"
let g:go_def_mapping_enabled = 0
let g:go_auto_type_info = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_fmt_command = "gofmt"

" format go imports
autocmd BufWritePost *.go silent execute "!goimports-reviser -local lab.co.clearstreet.io/clearstreet/fleet -file-path <afile>" | edit

Plug 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }

Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint'
  \ ]

Plug 'neoclide/coc-snippets'
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

Plug 'vlime/vlime', {'rtp': 'vim/'}

" Initialize plugin system
call plug#end()
