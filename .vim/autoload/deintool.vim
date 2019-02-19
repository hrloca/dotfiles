" plugins.
"
" dein.vim
" ----------------------------------------------------
" Set dein paths
let s:vimdir = $HOME . '/.vim'
let s:dein_dir = s:vimdir . '/dein'
let s:dein_github = s:dein_dir . '/repos/github.com'
let s:dein_repo_name = "Shougo/dein.vim"
let s:dein_repo_dir = s:dein_github . '/' . s:dein_repo_name
if !isdirectory(s:dein_repo_dir)
  echo "dein is not installed, install now "
  let s:dein_repo = "https://github.com/" . s:dein_repo_name
  echo "git clone " . s:dein_repo . " " . s:dein_repo_dir
  call system("git clone " . s:dein_repo . " " . s:dein_repo_dir)
endif
let &runtimepath = &runtimepath . "," . s:dein_repo_dir

function deintool#resolve(items)
  if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    for e in a:items
      call dein#add(e)
    endfor
    call dein#add('Shougo/vimproc', { 'build' : 'make' })
    call dein#end()
    call dein#save_state()
  endif

  if dein#check_install(['vimproc'])
    call dein#install(['vimproc'])
  endif

  " Installation check.
  if dein#check_install()
    call dein#install()
  endif
endfunction

