" Load the plugins
if exists($XDG_CONFIG_HOME)
  source $XDG_CONFIG_HOME/nvim/plugins.vim
else
  source $HOME/.config/nvim/plugins.vim
endif

colorscheme default
set background=dark
highlight LineNr guifg=black
highlight LineNr guibg=#00aa7f
set termguicolors

set number
"set relativenumber         " Line numbers
"set cursorline            " Current line highlight
"set cursorcolumn          " Current column highlight
set scrolloff=3            " Starts to scroll n lines before reach the border
set encoding=utf-8 nobomb  " Use UTF-8 without BOM
set binary                 " Don’t add empty newlines at the end of files
set mouse=a

" Indent politics
set tabstop=2 shiftwidth=2 expandtab

"" Trim all whitespace when save file
autocmd BufWritePre * :%s/\s\+$//e

"" Disable backups and swap files
set noswapfile
set nobackup
set nowritebackup

" Use OS clipboard by default
set clipboard^=unnamed,unnamedplus

" A fast way to save
map <silent> <Esc><Esc> :w<CR>

" Some tweaks to Vim Explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
nmap <silent> <C-E> :40vsp<CR>:Explore<CR>

" Map some mistakes to desired command
"cmap Q q
"cmap W w

" Leaders
let mapleader="ñ"

" Mappings with Leader
nnoremap <leader>f /
nnoremap <leader>F ?
nnoremap <leader>g :Ag<Space>
nnoremap <leader>* :Ag <C-R><C-W><CR>

" Leader -> Fzf
nnoremap <leader>ñ :Files<CR>
nnoremap <leader>o :BTags<CR>
nnoremap <leader>i :Buffers<CR>

" Emmet: ---------------------------------------------------------------
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" MatchTagAlways: -------------------------------------------------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx' : 1
    \}

" Lightline: -----------------------------------------------------------------
" let g:lightline = { 'colorscheme': 'gotham' }

" Ale Linter: ---------------------------------------------------------------
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_sign_error = '⛔️'
let g:ale_sign_warning = '❗️'
" Disabling eruby lintering because it works wrong
let g:ale_linters = {
\   'eruby': [],
\   'ruby': ['rubocop']
\}

" Ale + Lightline
let g:lightline = {}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = { 'right': [
      \  [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
      \  [ 'lineinfo' ],
      \  [ 'percent' ],
      \  [ 'fileformat', 'fileencoding', 'filetype' ]]
      \ }

" Disabling all highlighting
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1

" React: ---------------------------------------------------------------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Ultisnips: ------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Deoplete: ------------------------------------------------------------
let g:deoplete#enable_at_startup = 1

" Inflector: -----------------------------------------------------------
let g:inflector_mapping = 'gI'

" Fzf: -----------------------------------------------------------------
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" EasyAlign: -----------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set laststatus=2
