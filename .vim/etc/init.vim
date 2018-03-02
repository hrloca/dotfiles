function ImportTo(path)
  function ImportToC(target) closure
    exec 'source ' . a:path . a:target
  endfunction
  return function('ImportToC')
endfunction

function AddTo(list)
  function AddToC(item) closure
    call add(a:list, a:item)
  endfunction
  return function('AddToC')
endfunction
