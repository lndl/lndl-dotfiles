call plug#begin('~/.config/nvim/plugged')

" General_purpose: -------------------------------------------------------
Plug 'tmhedberg/matchit'
Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Autocompletion:  -------------------------------------------------------
Plug 'Shougo/deoplete.nvim'

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
Plug 'ctrlpvim/ctrlp.vim' | Plug 'FelikZ/ctrlp-py-matcher' | Plug 'tacahiroy/ctrlp-funky'

" Eye Candy:--------------------------------------------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()
