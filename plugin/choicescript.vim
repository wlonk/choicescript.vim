" Vim syntastic plugin helper
" Language:     Choicescript
" Maintainer:   Kit La Touche <kit@transneptune.net>

if exists("g:loaded_syntastic_choicescript_filetype")
  finish
endif
let g:loaded_syntastic_choicescript_filetype = 1
let s:save_cpo = &cpo
set cpo&vim

" This is to let Syntastic know about the Choicescript filetype.
" It enables tab completion for the 'SyntasticInfo' command.
" (This does not actually register the syntax checker.)
if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'choicescript')
else
    let g:syntastic_extra_filetypes = ['choicescript']
endif

let &cpo = s:save_cpo
unlet s:save_cpo
