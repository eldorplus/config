"http://groups.google.fr/group/vim_dev/browse_thread/thread/119d46074c5508a1

function! RelLinesInit ()
  sign define l_0 text=-- texthl=Search
  let index=1
  while index<=70
    let sindex = (index < 10 ? "0" : "") . index
    exe "sign define l_" . index . " text=" . sindex . " texthl=Search"
    let index+=1
  endwhile
endfunction

function! RelLines ()
  call RelLinesClear()
  let lcur=line(".")
  let ltop=line("w0")
  let lbot=line("w$")
  let index=ltop
  while index <= lbot
    let inum=index-lcur
    let anum= inum < 0 ? -inum : inum
    if anum < 70
      exe "sign place " . (70 + inum) . " line=" . index . " name=l_" . anum . " buffer=" . bufnr("%")
    endif
    let index+=1
  endwhile
endfunction

function! RelLinesClear ()
  let index=0
  while index<=140
    exe "silent sign unplace " . index . " buffer=" . bufnr("%")
    let index+=1
  endwhile
endfunction

map <silent> <special> <F11> :call RelLines()<cr>
map <silent> <special> <F12> :call RelLinesClear()<cr>

call RelLinesInit()
