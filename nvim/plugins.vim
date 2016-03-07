call plug#begin('~/.config/nvim/plugged')

" General_purpose: -------------------------------------------------------
Plug 'tmhedberg/matchit'

" Autocompletion:  -------------------------------------------------------
Plug 'Shougo/deoplete.nvim'

" SCM: -------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Syntax: ----------------------------------------------------------------
Plug 'scrooloose/syntastic' " Syntax check

" HTML:-------------------------------------------------------------------
Plug 'mattn/emmet-vim' 

" Ruby_Rails: ------------------------------------------------------------
Plug 'tpope/vim-rails'

" File Navigation:--------------------------------------------------------
Plug 'ctrlpvim/ctrlp.vim' | Plug 'FelikZ/ctrlp-py-matcher'
Plug 'tacahiroy/ctrlp-funky'

" Eye Candy:--------------------------------------------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
