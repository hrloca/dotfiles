" plugins
" ----------------------------------------------------

let s:plugins = []

function plugins#add(...)
  if a:0 >= 1
    if a:0 >= 2
      call add(s:plugins, [a:1, a:2])
    else
      call add(s:plugins, [a:1])
    end
  else
  end
endfunction

function plugins#resolve()
  call deintool#resolve(s:plugins)
endfunction

function plugins#import()
  call import#direct($HOME . '/.vim/plugins.vim')
endfunction


