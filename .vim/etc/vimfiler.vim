" vimfiler.

nmap <silent> <c-e> :VimFiler -buffer-name=miniexplore -split -winwidth=30 -no-quit -simple -toggle -auto-cd -status<Cr>
nmap <silent> <leader>fj :VimFiler -buffer-name=explore -auto-cd -toggle -split -winwidth=40 -no-quit -status -columns={""}<Cr>
nmap <silent> <leader>fi :VimFiler -buffer-name=filer -auto-cd -status<Cr>
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '-'
let g:vimfiler_tree_closed_icon = '+'
let g:vimfiler_file_icon = ' '
let g:vimfiler_readonly_file_icon = 'x'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_ignore_pattern = '^\%(.git\|.DS_Store\|.localized\)$'
let g:vimfiler_ignore_pattern = '^\.'
let g:vimfiler_force_overwrite_statusline = 0

" vimfiler settings
autocmd FileType vimfiler call My_vimfiler_settings()
function! My_vimfiler_settings()
  nmap <buffer><expr><Cr> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
  "nmap <silent><buffer>s :call vimfiler#mappings#do_action('my_split')<cr>
  "nmap <silent><buffer>v :call vimfiler#mappings#do_action('my_vsplit')<cr>
  nmap <buffer> D <Plug>(vimfiler_delete_file)
  nmap <buffer> C <Plug>(vimfiler_clipboard_move_file)
  nmap <buffer> c <Plug>(vimfiler_clipboard_copy_file)
  nmap <buffer> p <Plug>(vimfiler_clipboard_paste)
  nmap <buffer> f <Plug>(vimfiler_toggle_mark_current_line)
  vmap <buffer> f <Plug>(vimfiler_toggle_mark_selected_lines)
  nmap <buffer> <S-f> <Plug>(vimfiler_toggle_mark_current_line_up)
endfunction
call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')
" call vimfiler#set_execute_file('vim', 'vim')

function! s:git_root_dir()
  if(system('git rev-parse --is-inside-work-tree') == "true\n")
    return ':VimFiler ' . system('git rev-parse --show-cdup') . '\<CR>'
  else
    echoerr '!!!current directory is outside git working tree!!!'
  endif
endfunction
nnoremap <expr><Leader>gr <SID>git_root_dir()



