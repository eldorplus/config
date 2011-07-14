
function! NewTab()
  if tabpagenr('$') == 1
    tabnew
  else
    tabnext
  endif
endfunction

"
" nnoremap <Tab> :call NewTab()<cr>
"
" inoremap <C-t> :tabnew<cr>i
" vnoremap <C-t> :tabnew<cr>
" nnoremap <C-t> :tabnew<cr>
"

map <LocalLeader>tc :tabnew<cr>		" create a new tab
map <LocalLeader>td :tabclose<cr>	" close a tab
map <LocalLeader>tn :tabnext<cr>	" next tab
map <LocalLeader>l :tabnext<cr>		" next tab
map <LocalLeader>tp :tabprev<cr>	" previous tab
map <LocalLeader>h :tabprev<cr>		" previous tab
map <LocalLeader>tm :tabmove		" move a tab to a new location

" "dcraven" pasted "TabMessage: Put output of ex commands in a new tab."
" (10 lines, 287B) at http://sial.org/pbot/20504

"TabMessage: Put output of ex commands in a new tab.
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
