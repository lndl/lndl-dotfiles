call plug#begin('~/.config/nvim/plugged')

" General_purpose: -------------------------------------------------------
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Autocompletion:  -------------------------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'

" SCM: -------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Syntax: ----------------------------------------------------------------
Plug 'benekastah/neomake' " Syntax check

" HTML:-------------------------------------------------------------------
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'sass', 'less', 'scss', 'eruby'] }

" Ruby_Rails: ------------------------------------------------------------
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }

" File Navigation:--------------------------------------------------------

" Eye Candy:--------------------------------------------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()
