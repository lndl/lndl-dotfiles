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
set encoding=utf-8 nobomb " Use UTF-8 without BOM
set binary                " Don’t add empty newlines at the end of files
set synmaxcol=80          " Syntax colouring limit to n (for performance)
set colorcolumn=81        " Column limit to n + 1 as indication

" Indent politics
set tabstop=2 shiftwidth=2 expandtab

" Trim all whitespace when save file
autocmd BufWritePre * :%s/\s\+$//e

" Disable backups and swap files
set noswapfile
set nobackup
set nowritebackup

" Bizarre escape from insert mode
imap ñf <Esc>

" Sets some small configs to tmux themes configurations
au BufRead *.tmuxtheme setlocal filetype=tmux foldmethod=marker

" Some tweaks to Vim Explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
nmap <silent> <C-E> :40vsp<CR>:Explore<CR>

" Map some mistakes to desired command
cmap Q q
cmap W w

" Fzf: -----------------------------------------------------------------
" Adding some mappings:
nmap <silent> <C-P> :Files<CR>
nmap <silent> <C-O> :BTags<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Neomake: -------------------------------------------------------------
autocmd! BufWritePost * Neomake

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
