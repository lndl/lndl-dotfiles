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
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/vim-easy-align'
Plug 'sotte/presenting.vim'

" Autocompletion:  -------------------------------------------------------
Plug '/opt/homebrew/opt/fzf/'
Plug 'junegunn/fzf.vim'

" SCM: -------------------------------------------------------------------
Plug 'tpope/vim-fugitive'

" Syntax: ----------------------------------------------------------------
Plug 'w0rp/ale' " Syntax check
Plug 'maximbaz/lightline-ale'

" HTML:-------------------------------------------------------------------
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'sass', 'less', 'scss', 'eruby'] }

" Ruby_Rails: ------------------------------------------------------------
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }

" Elixir: ------------------------------------------------------------
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

" Haskell: ------------------------------------------------------------
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

" JS: --------------------------------------------------------------
Plug 'pangloss/vim-javascript'

" React JS: --------------------------------------------------------------
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'

" Vue.JS: --------------------------------------------------------------
Plug 'posva/vim-vue'

" Rust: --------------------------------------------------------------
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Docker: ------------------------------------------------------------
Plug 'ekalinin/Dockerfile.vim'

" Solidity: ------------------------------------------------------------
Plug 'tomlion/vim-solidity'

" Godot: ------------------------------------------------------------
Plug 'calviken/vim-gdscript3'

" Eye Candy:--------------------------------------------------------------
Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

call plug#end()
