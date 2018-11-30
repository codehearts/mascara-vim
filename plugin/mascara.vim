" don't load mascara more than once
if exists("g:mascara_loaded")
  finish
endif

let g:mascara_loaded = 1

function! s:apply_mascara() abort
  " get g:mascara_italic or use the default italic highlight groups
  let groups = get(g:, "mascara_italic", [
    \ "Comment",
    \ "Conditional",
    \ "Identifier",
    \ "Repeat",
    \ "Statement",
    \ "Type",
    \ "htmlItalic",
    \ "markdownItalic" ])

  " apply italics to each highlight group
  for group in groups
    execute "highlight" group "gui=italic"
  endfor
endfunction

" define :MascaraApply to apply mascara manually
command! -bar MascaraApply :call <SID>apply_mascara()

augroup mascara
  " apply mascara after colorscheme
  autocmd! colorscheme * :call <SID>apply_mascara()
augroup END

" apply mascara at startup unless g:mascara_apply_at_startup is 0
if get(g:, "mascara_apply_at_startup", 1)
  call <SID>apply_mascara()
endif
