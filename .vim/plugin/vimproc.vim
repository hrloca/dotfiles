" vimproc.

" if has('mac')
"   let g:vimproc#dll_path = $HOME.'/.vim/dein/repos/github.com/Shougo/vimproc/lib/vimproc_mac.so'
" elseif has('win32')
"   let g:vimproc#dll_path = $VIM.'/vimfiles/bundle/vimproc.vim/lib/vimproc_win32.dll'
" elseif has('win64')
"   let g:vimproc#dll_path = $VIM.'/vimfiles/bundle/vimproc.vim/lib/vimproc_win64.dll'
" endif

let g:vimproc#dll_path = $HOME.'/.vim/plugged/vimproc.vim/lib/vimproc_mac.so'
