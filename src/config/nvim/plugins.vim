" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'arcticicestudio/nord-vim'

Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#formatter = 'unique_tail'

Plug 'kdheepak/lazygit.nvim'
nnoremap <silent> <leader>lg :LazyGitCurrentFile<CR>

Plug 'machakann/vim-highlightedyank'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-repeat'

Plug 'matze/vim-move'

Plug 'svermeulen/vim-easyclip'
let g:EasyClipUseSubstituteDefaults = 1

"Plug 'thaerkh/vim-workspace'
"let g:workspace_autosave_always = 1
"let g:workspace_session_directory = $HOME . '/.vim/sessions/'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'zivyangll/git-blame.vim'
nnoremap <Leader>gb :<C-u>call gitblame#echo()<CR>

"Plug 'jiangmiao/auto-pairs'
"let g:AutoPairsMapCR = 0

Plug 'scrooloose/nerdcommenter'

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

Plug 'wakatime/vim-wakatime'

Plug 'cespare/vim-toml'

"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"
Plug 'chrisbra/Colorizer'
let g:colorizer_auto_filetype='*'
let g:colorizer_auto_color = 1
let g:colorizer_skip_comments = 0
let g:colorizer_disable_bufleave = 1

"Plug 'fatih/vim-go'
"let g:go_list_type = "quickfix"
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_generate_tags = 1
"let g:go_metalinter_autosave = 0
"let g:go_rename_command="gopls"
"let g:go_def_mapping_enabled = 0
"let g:go_auto_type_info = 1
"let g:go_doc_keywordprg_enabled = 0
"let g:go_fmt_command = "gofmt"

"Plug 'alvan/vim-closetag'
"let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
"let g:closetag_regions =  {
"\ 'typescript.tsx': 'jsxRegion,tsxRegion',
"\ 'javascript.jsx': 'jsxRegion',
"\ }

"Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-tailwindcss',
  \ 'coc-tsserver',
  \ 'coc-yaml',
  \ ]

"Plug 'neoclide/coc-snippets'
"let g:coc_snippet_next = '<tab>'
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"Plug 'vlime/vlime', {'rtp': 'vim/'}

"Plug 'rhysd/vim-clang-format'
"let g:clang_format#auto_format = 0
"let g:clang_format#style_options = {
	"\ "BasedOnStyle" : "Google",
	"\ "AllowShortIfStatementsOnASingleLine" : "true",
	"\ "IndentCaseLabels" : "true" }
"autocmd FileType c,cpp ClangFormatAutoEnable
"autocmd FileType js,ts,jsx,tsx ClangFormatAutoDisable

"Plug 'hashivim/vim-terraform'
"let g:terraform_fmt_on_save = 1

" python
"Plug 'vim-scripts/indentpython.vim'
"Plug 'davidhalter/jedi-vim'

"Plug 'heavenshell/vim-jsdoc', {
  "\ 'for': ['javascript', 'javascript.jsx','typescript', 'typescript.tsx'],
  "\ 'do': 'make install'
"\}

"Plug 'jparise/vim-graphql'

Plug 'github/copilot.vim'

" Initialize plugin system
call plug#end()
