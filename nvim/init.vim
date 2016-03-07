" Load the plugins
if exists($XDG_CONFIG_HOME)
  source $XDG_CONFIG_HOME/nvim/plugins.vim
else
  source $HOME/.config/nvim/plugins.vim
endif

set background=dark
colorscheme solarized
set clipboard=unnamedplus "Share system clipboard on Linux

set relativenumber "Line numbers
set cursorline     "Current line highlight
set cursorcolumn   "Current column highlight
set scrolloff=3    "Starts to scroll n lines before reach the border
set wildmode=list:full    " Show complete list of options and navigation too
set encoding=utf-8 nobomb " Use UTF-8 without BOM
set binary                " Don’t add empty newlines at the end of files
set synmaxcol=80          " Syntax colouring limit to n (for performance)
set colorcolumn=81        " Column limit to n + 1 as indication

" Disable backups and swap files
set noswapfile
set nobackup
set nowritebackup

"Bizarre escape from insert mode
imap ñf <Esc>

"Some tweaks to Vim Explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
nmap <silent> <C-E> :40vsp<CR>:Explore<CR>

" Syntastic: -------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CTRLP: -----------------------------------------------------------------

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_use_caching = 0
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>', '<c-h>'],
      \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*source_maps*,.git,.svn,*/public/assets/*
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|source_maps)$',
      \ 'file': '\v\.(exe|so|dll|pyc)$'
      \ }

let g:ctrlp_extensions = ['funky', 'tag']
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

" VimAirline: -----------------------------------------------------------------

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ω'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = '✹'

let g:airline_theme='solarized'

" Deoplete: -------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
