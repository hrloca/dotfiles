" vim-quickrun.

let g:quickrun_config = {
      \   "*" : {
      \       "runner" : "vimproc",
      \       "runner/vimproc/updatetime" : 10,
      \   },
      \   "hook/output_encode/enable" : 1,
      \   "hook/output_encode/encoding" : "utf-8",
      \}
let g:quickrun_config['markdown'] = {
      \   'outputter': 'browser'
      \ }

function! s:Qr()
  :QuickRun
endfunction
