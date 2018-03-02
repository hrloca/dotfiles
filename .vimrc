"
" .vimrc
" ----------------------------------------------------------------------
" init.
let s:settingSourcePath = $HOME . '/.vim/etc'

exec 'source ' . s:settingSourcePath . '/init.vim'

let s:importSettingSource = ImportTo(s:settingSourcePath)
let s:setPulgins = AddTo(plungins)

let plungins = []

call s:setPulgins('Shougo/dein.vim')
call s:setPulgins('Shougo/unite.vim')
call s:setPulgins('Shougo/unite-outline')
call s:setPulgins('Shougo/vimfiler.vim')
call s:setPulgins('Shougo/vimshell.vim')
call s:setPulgins('Shougo/neomru.vim')
call s:setPulgins('Shougo/neocomplete.vim')
call s:setPulgins('Shougo/neosnippet.vim')
call s:setPulgins('tpope/vim-markdown')
call s:setPulgins('tpope/vim-surround')
call s:setPulgins('fuenor/qfixgrep')
call s:setPulgins('mattn/emmet-vim')
call s:setPulgins('h1mesuke/vim-alignta')
call s:setPulgins('thinca/vim-quickrun')
call s:setPulgins('thinca/vim-qfreplace')
call s:setPulgins('itchyny/lightline.vim')
call s:setPulgins('editorconfig/editorconfig-vim')
call s:setPulgins('toyamarinyon/vim-swift')
call s:setPulgins('ujihisa/neoclojure.vim')
call s:setPulgins('posva/vim-vue')
call s:setPulgins('w0ng/vim-hybrid')
call s:setPulgins('tomasr/molokai')
call s:setPulgins('zanglg/nova.vim')
call s:setPulgins('hrloca/snippet')

call s:importSettingSource('/dein.vim')
call s:importSettingSource('/encoding.vim')

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

call s:importSettingSource('/lightline.vim')
call s:importSettingSource('/neocomplete.vim')
call s:importSettingSource('/neosnippet.vim')
call s:importSettingSource('/unite.vim')
call s:importSettingSource('/vimproc.vim')
call s:importSettingSource('/vimshell.vim')
call s:importSettingSource('/vimfiler.vim')
call s:importSettingSource('/QFixGrep.vim')
call s:importSettingSource('/Qfreplace.vim')
call s:importSettingSource('/emmet.vim')
call s:importSettingSource('/vim-quickrun.vim')
call s:importSettingSource('/myscript.vim')


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

