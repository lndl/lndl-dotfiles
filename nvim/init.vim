" Load the plugins
if exists($XDG_CONFIG_HOME)
  source $XDG_CONFIG_HOME/nvim/plugins.vim
else
  source $HOME/.config/nvim/plugins.vim
endif

colorscheme gotham

set background=dark
set termguicolors

set number
"set relativenumber         " Line numbers
"set cursorline            " Current line highlight
"set cursorcolumn          " Current column highlight
set scrolloff=3            " Starts to scroll n lines before reach the border
set encoding=utf-8 nobomb  " Use UTF-8 without BOM
set binary                 " Don’t add empty newlines at the end of files

" Indent politics
set tabstop=2 shiftwidth=2 expandtab

"" Trim all whitespace when save file
autocmd BufWritePre * :%s/\s\+$//e

"" Disable backups and swap files
set noswapfile
set nobackup
set nowritebackup

" Use OS clipboard by default
set clipboard=unnamed

" A fast way to save
map <silent> <Esc><Esc> :w<CR>

" Some tweaks to Vim Explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
nmap <silent> <C-E> :40vsp<CR>:Explore<CR>

" Map some mistakes to desired command
cmap Q q
cmap W w

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
nnoremap <leader>j :Buffers<CR>


" Lightline: ---------------------------------------------------------------
let g:lightline = { 'colorscheme': 'gotham' }

" Ale Linter: ---------------------------------------------------------------
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" Disabling eruby lintering because it works wrong
let g:ale_linters = {
\   'eruby': [],
\}

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

set laststatus=2
