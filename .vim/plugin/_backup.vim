
if has("unix")
  set backup			" produce *~ backup files
"
"   set backupext=.bak		" add ~ to the end of backup files
"   set backupdir=./.backup/
"
"   function s:CreateBackupDir ()
"     if !isdirectory(".backup")
"       call mkdir(".backup")
"     endif
"   endfunction
"
"   autocmd	BufWritePre	*	call s:CreateBackupDir()
"
else
  set nobackup
endif
