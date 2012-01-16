function! s:ToUniteSource(dict)
  let fl = split(a:dict['file_colon_line'], ':')
  return {
      \   "word": a:dict['source'],
      \   "action__path": fl[0],
      \   "action__line": fl[1],
      \   "kind": "jump_list",
      \   "source": "stepdefs",
      \ }
endfunction

let s:source = {'name' : 'stepdefs'}

function! s:source.gather_candidates(args, context)
  try
    let input = join(readfile('features/.cucumber/stepdefs.json'), '')
    let null = []
    exe "let stepdefs = " . input
    unlet null

    if(len(stepdefs) == 0)
      return [{"word": "none"}]
    else
      return map(stepdefs, 's:ToUniteSource(v:val)')
    endif
  catch /^Vim\%((\a\+)\)\=:E484/
    return [{"word": "none"}]
  endtry
endfunction

function! unite#sources#stepdefs#define()
  return [s:source]
endfunction

