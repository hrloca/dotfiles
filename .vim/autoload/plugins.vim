" plugins
" ----------------------------------------------------

let s:plugins = []

function plugins#add(item)
  call add(s:plugins, a:item)
endfunction

function plugins#resolve()
  call deintool#resolve(s:plugins)
endfunction
