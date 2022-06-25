call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'fuenor/qfixgrep'
Plug 'h1mesuke/vim-alignta'
Plug 'thinca/vim-quickrun'
Plug 'thinca/vim-qfreplace'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0ng/vim-hybrid'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'zanglg/nova.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'findango/vim-mdx'
Plug 'jxnblk/vim-mdx-js'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neomru.vim'
Plug 'hrloca/snippet'
call plug#end()
