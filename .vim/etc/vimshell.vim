" vimshell

let g:vimshell_interactive_update_time = 10
"let g:vimshell_prompt = $USER." $ "
let g:vimshell_prompt = " $ "
let g:vimshell_popup_height = 50
augroup my-vimshell
    autocmd!
    autocmd FileType vimshell
\       imap <expr> <buffer> <C-n> pumvisible() ? "\<C-n>" : "\<Plug>(vimshell_history_neocomplete)"
\       set wrap
augroup END

nmap <silent> <leader>sp :VimShellPop -toggle -create<CR>
nmap <silent> <leader>sh :VimShell<CR>
