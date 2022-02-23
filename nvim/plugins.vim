call plug#begin('~/.config/nvim/plugged')

" General_purpose: -------------------------------------------------------
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion:  -------------------------------------------------------
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Snippets:  -------------------------------------------------------------
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'

" SCM: -------------------------------------------------------------------
Plug 'tpope/vim-fugitive'

" Eye Candy:--------------------------------------------------------------
Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
