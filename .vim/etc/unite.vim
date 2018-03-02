" unite.

" 常用セット
nmap <silent> <leader>uu :<C-u>Unite file_mru -toggle -winheight=15 -horizontal -direction=botright<CR>
" バッファ一覧
nmap <silent> <leader>ub :Unite buffer -toggle -winheight=15  -direction=botright<CR>
" 最近使用したファイル一覧
nmap <silent> <leader>um :<C-u>Unite file_mru -toggle -winheight=15  -direction=botright<CR>
" 全部乗せ
nmap <silent> <leader>ut :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file -toggle -winheight=15 -direction=botright<CR>
" ファイル一覧
nmap <silent> <leader>uf :<C-u>UniteWithBufferDir -buffer-name=files file -toggle -winheight=15 -direction=botright<Cr>
" レジスタ一覧
nmap <silent> <leader>ur :<C-u>Unite -buffer-name=register register -toggle -winheight=15 -direction=botright<CR>
" 検索
nmap <silent> <leader>ul :<C-u>Unite line<CR>
" grep検索
nmap <silent> <leader>ug :<C-u>Unite grep:%:-iHRn<CR>
" ブックマーク
nmap <silent> <leader>uk :Unite bookmark -toggle -start-insert -winheight=15<CR>
" ブックマーク追加
nmap <silent> <leader>ua :UniteBookmarkAdd<CR>
" 挿入モードで開始
let g:unite_enable_start_insert=1
" 下で起動オプション
"-direction=botright

" unite internal setting
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  imap <buffer> jj <Plug>(unite_insert_leave)
  nmap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
  nmap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
  nmap <silent><buffer><expr> x unite#do_action('start')
endfunction

" unite antion
" unite start action
let start = {
      \ 'description' : 'start with system app',
      \ 'is_selectable' : 1,
      \ }
function! start.func(candidates)"{{{
  for l:candidate in a:candidates
    call OpenFile(l:candidate.action__path)
  endfor
endfunction"}}}
call unite#custom_action('openable', 'start', start)
unlet start

" unite diff
let diff_action = {
      \   'description' : 'selectable diff',
      \   'is_selectable' : 1,
      \ }
function! diff_action.func(candidates)
  if len(a:candidates) == 1
    execute 'vert diffsplit ' . a:candidates[0].action__path
  elseif len(a:candidates) == 2
    execute 'tabnew ' . a:candidates[0].action__path
    execute 'vert diffsplit ' . a:candidates[1].action__path
  else
    echo 'too many candidates!'
  endif
endfunction
call unite#custom_action('file', 'diff', diff_action)
unlet diff_action

" my split
let my_split_action = {
      \ 'description' : 'for vimfiler action',
      \ 'is_selectable' : 1,
      \ }
function! my_split_action.func(candidates)
  wincmd p
  exec 'split '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_split', my_split_action)
unlet my_split_action

" my vsplit
let my_vsplit_action = {
      \ 'description' : 'for vimfiler action',
      \ 'is_selectable' : 1,
      \ }
function! my_vsplit_action.func(candidates)
  wincmd p
  exec 'vsplit '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_vsplit', my_vsplit_action)
unlet my_vsplit_action
