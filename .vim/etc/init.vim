function! Import(path)
  function! C(target) closure
    exec 'source ' . a:path . a:target
  endfunction
  return function('C')
endfunction
