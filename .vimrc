"
" .vimrc
" ----------------------------------------------------------------------


" init

call plugins#import()


" color.

colorscheme hybrid
set background=dark


" map.

let mapleader = " "

vmap < <gv
vmap > >gv
vmap v $h


" display.

set wrap
set nonumber
set cursorline
set nocursorcolumn
set laststatus=2
set cmdheight=1
set showmatch
set helpheight=999
set noruler
set showcmd
set notitle
set shortmess+=I
set wildmenu
set list
set signcolumn=yes

set listchars=tab:.\ 
set listchars+=trail:･
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=nbsp:%
set listchars+=eol:\ 


" system.

set clipboard+=unnamed
set undofile
set noundofile
set grepprg=internal
set directory=~/.tmp
set backupdir=~/.tmp
set undodir=~/.tmp
set visualbell t_vb=
set noerrorbells
set history=500


" search.

set magic
set ignorecase
set smartcase
set hlsearch
set incsearch
set wrapscan

" file.

set confirm
set autoread
set nobackup
set noswapfile


" tab and indent.

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent


" action.

set splitbelow
set splitright
set textwidth=0
set backspace=indent,eol,start
set completeopt=noinsert

" settings.

" 常に開いているファイルと同じディレクトリをカレントディレクトリにする
au BufEnter * execute ":lcd ".expand("%:p:h")
" v * で選択中の単語を検索
vmap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
"対象があるときのみ自動でquickfixが開く
au QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif
filetype plugin indent on
syntax on

" tsxファイルタイプ解決
autocmd BufNewFile,BufRead *.tsx let b:tsx_ext_found = 1
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" netrw
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_winsize = 0
let g:netrw_keepdir = 0

function! NetrwSplitOpen(splitCommand)
  execute a:splitCommand | :e .
endfunction

noremap <c-e>e :call NetrwSplitOpen('')<cr>
noremap <c-e><c-e> :call NetrwSplitOpen('')<cr>
noremap <c-e>h :call NetrwSplitOpen(':leftabove vnew')<cr>
noremap <c-e><c-h> :call NetrwSplitOpen(':leftabove vnew')<cr>
noremap <c-e>l :call NetrwSplitOpen(':vnew')<cr>
noremap <c-e><c-l> :call NetrwSplitOpen(':vnew')<cr>
noremap <c-e>k :call NetrwSplitOpen(':leftabove new')<cr>
noremap <c-e><c-k> :call NetrwSplitOpen(':leftabove new')<cr>
noremap <c-e>j :call NetrwSplitOpen(':new')<cr>
noremap <c-e><c-j> :call NetrwSplitOpen(':new')<cr>

" python3 path
if has('nvim')
  let g:python3_host_prog = '/opt/homebrew/bin/python3'
endif
