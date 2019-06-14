" ale

" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>ad :ALEGoToDefinitionInVSplit<CR>
nmap <silent> <leader>af :ALEFindReferences<CR>
nmap <silent> <leader>ah :ALEHover<CR>
let g:ale_set_balloons = 1
" ALEGoToDefinition      - Open the definition of the symbol under the cursor.
" ALEGoToDefinitionInTab - The same, but for opening the file in a new tab.
" ALEGoToDefinitionInSplit - The same, but in a new split.
" ALEGoToDefinitionInVSplit - The same, but in a new vertical split.
" ALEFindReferences

let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 10

let g:ale_sign_error = '!!'
let g:ale_sign_warning = '--'

" highlight clear ALEErrorSign
" highlight clear ALEWarningSign

let g:ale_set_highlights = 0

" 左端のシンボルカラムを表示したままにする
let g:ale_sign_column_always = 1

" quickfixを使って、location listを使わない
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" エラーと警告がなくなっても開いたままにする
" let g:ale_keep_list_window_open = 1

" let g:ale_open_list = 1
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['eslint'],
" \}
