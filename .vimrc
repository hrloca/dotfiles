"
" .vimrc
" ----------------------------------------------------------------------
" init.
exec 'source ' . $HOME . '/.vim/etc/init.vim'

let s:sourcePath = $HOME . '/.vim/etc'
let s:ImportSource = Import(s:sourcePath)
let plungins = [
\ 'Shougo/dein.vim',
\ 'Shougo/unite.vim',
\ 'Shougo/unite-outline',
\ 'Shougo/vimfiler.vim',
\ 'Shougo/vimshell.vim',
\ 'Shougo/neomru.vim',
\ 'Shougo/neocomplete.vim',
\ 'Shougo/neosnippet.vim',
\ 'tpope/vim-markdown',
\ 'tpope/vim-surround',
\ 'fuenor/qfixgrep',
\ 'mattn/emmet-vim',
\ 'h1mesuke/vim-alignta',
\ 'thinca/vim-quickrun',
\ 'thinca/vim-qfreplace',
\ 'itchyny/lightline.vim',
\ 'editorconfig/editorconfig-vim',
\ 'toyamarinyon/vim-swift',
\ 'ujihisa/neoclojure.vim',
\ 'posva/vim-vue',
\ 'w0ng/vim-hybrid',
\ 'tomasr/molokai',
\ 'zanglg/nova.vim',
\ 'hrloca/snippet',
\ ]

call s:ImportSource('/dein.vim')
call s:ImportSource('/encoding.vim')

filetype plugin indent on
syntax on


" color.

colorscheme hybrid
set background=dark


" map.

let mapleader = " "

vmap < <gv
vmap > >gv
vmap v $h
nmap <silent> <leader>nt :<c-u>tabedit<cr>
nmap <silent> <leader>ns :<c-u>new<cr>
nmap <silent> <leader>nv :<c-u>vnew<cr>
nmap <c-s-tab> :tabprevious<cr>
nmap <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>
map <c-tab> :tabnext<cr>
imap <c-s-tab> <Esc>:tabprevious<cr>i
imap <c-tab> <Esc>:tabnext<cr>i
nmap <c-t> :tabnew<cr>
imap <c-t> <Esc>:tabnew<cr>


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


" plugins settings.

call s:ImportSource('/lightline.vim')
call s:ImportSource('/neocomplete.vim')
call s:ImportSource('/neosnippet.vim')
call s:ImportSource('/unite.vim')
call s:ImportSource('/vimproc.vim')
call s:ImportSource('/vimshell.vim')
call s:ImportSource('/vimfiler.vim')
call s:ImportSource('/QFixGrep.vim')
call s:ImportSource('/Qfreplace.vim')
call s:ImportSource('/emmet.vim')
call s:ImportSource('/vim-quickrun.vim')
call s:ImportSource('/myscript.vim')


" settings.

au BufWritePre *.go Fmt
" gf(<c-w>f)した時/から始まるパスのファイルも開けるようにする
au filetype html setlocal includeexpr=substitute(v:fname,'^\\/','','') | setlocal path+=./;/ 
" 常に開いているファイルと同じディレクトリをカレントディレクトリにする
au BufEnter * execute ":lcd ".expand("%:p:h")
" v * で選択中の単語を検索
vmap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
"対象があるときのみ自動でquickfixが開く
au QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

