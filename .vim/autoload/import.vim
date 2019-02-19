" import
" ----------------------------------------------------

function import#from(path)
  function ImportToC(target) closure
    exec 'source ' . a:path . a:target
  endfunction
  return function('ImportToC')
endfunction

function import#direct(path)
  exec 'source ' . a:path
endfunction

