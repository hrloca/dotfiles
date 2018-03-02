" notes
" ----------------------------------------------------
"
" [ 拡張子取得 ]
" let path = matchlist(fullpath,'\v(.*)\.(.*)')
" expand("%")       => カレントファイルの名前を取得
" expand("%:p")     => カレントファイルのフルパスを取得
" expand("%:r")     => カレントファイルの名前、拡張子抜きを取得
" expand("%:e")     => カレントファイルの拡張子を取得
" expand("<cfile>") => カーソル下のファイル名を取得
" expand("<cword>") => カーソル下のテキストを取得



" controll
" ----------------------------------------------------
nmap <silent><leader>gp :call Getpath()<cr>
nmap <silent><leader>gl :call Getline()<cr>
nmap <silent><leader>gc :call Getcol()<cr>
nmap <silent><leader>fo :call PopupOpen()<cr>

" get path.

function! Getpath()
  let path = expand("%:p")
  echo path
  let @* = path
endfunction


" get line.

function! Getline()
  let line = 'L: '.line(".")
  echo line
  let @* = line
endfunction


" get col.

function! Getcol()
  let col = 'C: '.col(".")
  echo col
  let @* = col
endfunction


" Open File.
"
function! OpenFile(path)
  if a:path != ''
    let path = a:path
    let cmd = ReCmd(path)
    if cmd != 1
      call AsyncRun(cmd)
    endif
  endif
endfunction

function! ReCmd(item)
  let item = a:item
  if item != ''
    if has('mac')
      let cmd = printf('open %s', item)
    endif
    if has('win32')
      let cmd = printf('start %s', item)
    endif
    if has('win64')
      let cmd = printf('start %s', item)
    endif
    return cmd
  else
    return 1
  endif
endf


" popup_img.

function! PopupOpen()
  autocmd FileType html :setlocal path+=;/
  let type = &filetype
  if type != ''
    cd %:h
  endif
  let tmp = expand("<cfile>")
  let path = matchlist(tmp,'\v(/*)(.*)')
  let file = path[2]
  echo file
  call OpenFile(file)
  if type != ''
    cd -
  endif
endfunction


" async.

function! AsyncRun(cmd)
  let cmd = a:cmd
  let vimproc = vimproc#pgroup_open(cmd)
  let s:vimproc = vimproc
  let s:result = ""
  call vimproc.stdin.close()
  call SetResultEvent()
endfunction

function! ResetResultEvent()
  augroup vimproc-async-receive
    autocmd!
  augroup END
endfunction

function! SetResultEvent()
  call ResetResultEvent()
  augroup vimproc-async-receive
    autocmd! CursorHold,CursorHoldI * call RreceiveAsyncResult()"
  augroup END
endfunction

function! DrowAsyncResult(result)
  if a:result == ""
    echom 'sucsess.'
    return 0
  else
    echo a:result
    return 1
  endif
endfunction

function! RreceiveAsyncResult()
  if !has_key(s:, "vimproc")
    return
  endif

  let vimproc = s:vimproc
  try
    if !vimproc.stdout.eof
      let s:result .= vimproc.stdout.read()
    endif
    if !vimproc.stderr.eof
      let s:result .= vimproc.stderr.read()
    endif
    if !(vimproc.stdout.eof && vimproc.stderr.eof)
      return 0
    endif
  catch
    echom v:throwpoint
  endtry
  call DrowAsyncResult(s:result)
  call vimproc.stdout.close()
  call vimproc.stderr.close()
  call vimproc.waitpid()
  unlet s:vimproc
  unlet s:result
endfunction

