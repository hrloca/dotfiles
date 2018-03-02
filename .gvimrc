"
" .gvimrc
" ----------------------------------------------------------------------

" map.


" gui 検索
nmap <silent> <leader>// :<c-u>promptfind<cr>
" gui 置換
nmap <silent> <leader>ss :<c-u>promptrepl<cr>


" font.

"RictyDiminished-Regular:h10.5
"UbuntuMono-Regular:h10
"ico:h11
"SourceHanCodeJP-Regular:h9
"SourceCodePro-Regular:h10.5
"PanicSans:h10.5
"
set guifont=SourceCodePro-Regular:h10
" defaults write org.vim.MacVim MMCellWidthMultiplier 1.0


" color.

" カラースキーム
"colorscheme white
"colorscheme br
"colorscheme black
"colorscheme Tomorrow
"colorscheme Tomorrow-Night
colorscheme hybrid
" 無拡張子のカラー
set syntax=html
" ハイライトテストtestコマンド
com Hi so $VIMRUNTIME/syntax/hitest.vim
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END
" カスタムファイルタイプ
autocmd BufNewFile,BufRead *.txt set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.hbs set filetype=html
autocmd BufNewFile,BufRead *.vm set filetype=html
autocmd BufNewFile,BufRead *.gss set filetype=css
autocmd BufNewFile,BufRead *.ts set filetype=typescript
" 透明度
"set transparency=15
set transparency=0
nmap <expr><silent><down> ":let &transparency=&transparency+5\<CR>"
nmap <expr><silent><up> ":let &transparency=&transparency-5\<CR>"
" vimfiler
hi def link vimfilerClosedFile Normal


" font size.

" keep default value
let s:current_font = &guifont
" command
command! -narg=0 ZoomIn    :call s:ZoomIn()
command! -narg=0 ZoomOut   :call s:ZoomOut()
command! -narg=0 ZoomReset :call s:ZoomReset()
" map
nmap <right> :ZoomIn<CR>
nmap <left> :ZoomOut<CR>
nmap <c-0> :ZoomReset<CR>
function! s:ZoomIn()
  let l:fsize = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsize += 1
  let l:guifont = substitute(&guifont, ':h\([^:]*\)', ':h' . l:fsize, '')
  let &guifont = l:guifont
endfunction
function! s:ZoomOut()
  let l:fsize = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsize -= 1
  let l:guifont = substitute(&guifont, ':h\([^:]*\)', ':h' . l:fsize, '')
  let &guifont = l:guifont
endfunction
function! s:ZoomReset()
  let &guifont = s:current_font
endfunction


" other.


set antialias            " アンチエイリアスを有効
set linespace=3          " 行間隔の設定
set guioptions-=T        " ウィンドウ上部のタブ部分を無効に
set guioptions-=t        " ツールバー非表示
set guioptions-=i        " アイコンを削除
set guioptions+=c        " ?
set lines=30 columns=90 " ウィンドウサイズ
set cmdheight=1          " コマンドラインの高さ
set browsedir=buffer     " 今開いているファイルと同じディレクトリを初期ディレクトリとして、ファイル選択ダイアログ
" 左スクロールバー非表示
set guioptions-=l
set guioptions-=L
" 右スクロールバー非表示
set guioptions-=r
set guioptions-=R


" mac only.


if has('mac')
  " macのメタを有効にする
  set macmeta
  " ハイライト
  au VimEnter,BufWinEnter,WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
  "au VimEnter,BufWinEnter,WinEnter * let w:m3 = matchadd('URL', '\a\a\+://[[:alnum:];/?:@&=+$,_.~*|()-]\+')
  hi ZenkakuSpace guifg=#333333 guibg=#dddddd gui=underline cterm=underline term=underline
  " フルスクリーンモード(ターミナルコマンド)" " フルスクリーンモード(ターミナルコマンド)
  " defaults write org.vim.MacVim MMNativeFullScreen 0
  " フルスクリーンモード
  "set fuoptions=maxvert,maxhorz
  "autocmd GUIEnter * set fullscreen
endif


" windows only.


" 全角space
if has('win32')
  augroup highlightIdeographicSpace
    autocmd!
    autocmd ColorScheme * highlight IdeographicSpace guifg=#333333 guibg=#dddddd gui=underline cterm=underline term=underline
    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
  augroup END
endif

if has('win32')
  " フォント設定
  set guifont=nagano:h9.5
  set guifont=ico:h10.5
  " カラー
  colorscheme black
  colorscheme white
  " 行間隔の設定
  set linespace=1
  " 文字間隔の設定
  set charspace=1
  " ツールバー非表示
  set guioptions-=m
  " ウィンドウ最大化
  " au GUIEnter * simalt ~x
  " set guioptions+=C
  set iminsert=0 imsearch=0 " デフォルトimeオフ
  " 挿入モード終了時にIME状態を保存しない
  inoremap <silent> <ESC> <ESC>
  inoremap <silent> <C-[> <ESC>
  " IMEモード固定
  inoremap <silent> <C-j> <C-^>
  inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
  " メニューを英語に戻す
  source $vimruntime/delmenu.vim
  set langmenu=none
  source $vimruntime/menu.vim
  " 透明度
  augroup hack234
    autocmd!
    autocmd FocusGained * set transparency=235
    autocmd FocusLost * set transparency=235
  augroup END
endif
