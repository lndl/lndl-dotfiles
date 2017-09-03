call plug#begin('~/.config/nvim/plugged')

" General_purpose: -------------------------------------------------------
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'wikitopian/hardmode'
Plug 'farfanoide/inflector.vim'
Plug 'junegunn/vader.vim'

" Autocompletion:  -------------------------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Snippets:  ------------------------------------------------------------
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" SCM: -------------------------------------------------------------------
Plug 'tpope/vim-fugitive'

" Syntax: ----------------------------------------------------------------
 Plug 'w0rp/ale' " Syntax check

" HTML:-------------------------------------------------------------------
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'sass', 'less', 'scss', 'eruby'] }

" Ruby_Rails: ------------------------------------------------------------
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }

" Elixir: ------------------------------------------------------------
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

" Haskell: ------------------------------------------------------------
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

" React JS: --------------------------------------------------------------
Plug 'mxw/vim-jsx'

" Docker: ------------------------------------------------------------
Plug 'ekalinin/Dockerfile.vim'

" Eye Candy:--------------------------------------------------------------
Plug 'itchyny/lightline.vim'
Plug 'whatyouhide/vim-gotham'

call plug#end()
