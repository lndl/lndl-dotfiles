" Load the plugins
if exists($XDG_CONFIG_HOME)
  source $XDG_CONFIG_HOME/nvim/plugins.vim
else
  source $HOME/.config/nvim/plugins.vim
endif

colorscheme tokyonight-day

set background=dark
set signcolumn=yes
set termguicolors
set laststatus=2
set number
set scrolloff=3            " Starts to scroll n lines before reach the border
set encoding=utf-8 nobomb  " Use UTF-8 without BOM
set binary                 " Don’t add empty newlines at the end of files
set mouse=a

" Popup color
highlight Pmenu ctermbg=DarkBlue guibg=DarkBlue

" set completion type
set completeopt+=menuone

" read modelines at the beginning of files
set modeline

" Do not show mode
set noshowmode

" Indent politics
set tabstop=2 shiftwidth=2 expandtab

"" Trim all whitespace when save file
" autocmd BufWritePre * :%s/\s\+$//e

"" Disable backups and swap files
set noswapfile
set nobackup
set nowritebackup

" Use OS clipboard by default
set clipboard^=unnamed,unnamedplus

" A fast way to save
map <silent> <Esc><Esc> :w<CR>

" Leaders
let mapleader=";"

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

" EasyAlign: -----------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
