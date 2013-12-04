
"""""""""""""""""""""""
" Variables
"""""""""""""""""""""""
let s:lastSearch = ''
let s:lastSearchType = 'f'

"""""""""""""""""""""""
" Plugs
"""""""""""""""""""""""
nnoremap <plug>ExtendedFtRepeatSearchForward :<c-u>call <sid>RepeatSearchForward(v:count, 'n')<cr>
nnoremap <plug>ExtendedFtRepeatSearchBackward :<c-u>call <sid>RepeatSearchBackward(v:count)<cr>

nnoremap <plug>ExtendedFtRepeatSearchCenterForward :<c-u>call <sid>RepeatSearchForward(v:count, 'n')<cr>zz
nnoremap <plug>ExtendedFtRepeatSearchCenterBackward :<c-u>call <sid>RepeatSearchBackward(v:count)<cr>zz

nnoremap <expr> <silent> <plug>ExtendedFtSearchFForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "f", "f")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchFBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "b", "f")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchTForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "f", "t")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchTBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "b", "t")<cr>'

xnoremap <expr> <plug>ExtendedFtVisualModeRepeatSearchForward '<esc>:<c-u>call <sid>RepeatSearchForward('. v:count . ', "x")<cr>m>gv'
xnoremap <expr> <plug>ExtendedFtVisualModeRepeatSearchBackward '<esc>:<c-u>call <sid>RepeatSearchBackward('. v:count . ')<cr>m>gv'

xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchFForward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "f")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchFBackward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "f")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchTForward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "t")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchTBackward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "t")<cr>m>gv'

onoremap <plug>ExtendedFtOperationModeRepeatSearchForward :call <sid>RepeatSearchForward(v:count, 'o')<cr>
onoremap <plug>ExtendedFtOperationModeRepeatSearchBackward :call <sid>RepeatSearchBackward(v:count)<cr>

onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchFForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "p")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchFBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "f")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchTForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "f")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchTBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "p")<cr>'

" Seek = search using two characters instead of just one
nnoremap <expr> <silent> <plug>ExtendedFtSearchSForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . <sid>InputChar() . '", "f", "f")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchSBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . <sid>InputChar() . '", "b", "f")<cr>'

xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchSForward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "f", "f")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtVisualModeSearchSBackward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "b", "f")<cr>m>gv'

onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchSForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "f", "p")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtOperationModeSearchSBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "b", "f")<cr>'

"""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""
if !exists('g:ExtendedFTUseDefaults') || g:ExtendedFTUseDefaults
    nmap <silent> ; <plug>ExtendedFtRepeatSearchForward
    nmap <silent> , <plug>ExtendedFtRepeatSearchBackward
    nmap <silent> f <plug>ExtendedFtSearchFForward
    nmap <silent> F <plug>ExtendedFtSearchFBackward
    nmap <silent> t <plug>ExtendedFtSearchTForward
    nmap <silent> T <plug>ExtendedFtSearchTBackward

    xmap <silent> ; <plug>ExtendedFtVisualModeRepeatSearchForward
    xmap <silent> , <plug>ExtendedFtVisualModeRepeatSearchBackward
    xmap <silent> f <plug>ExtendedFtVisualModeSearchFForward
    xmap <silent> F <plug>ExtendedFtVisualModeSearchFBackward
    xmap <silent> t <plug>ExtendedFtVisualModeSearchTForward
    xmap <silent> T <plug>ExtendedFtVisualModeSearchTBackward

    omap <silent> ; <plug>ExtendedFtOperationModeRepeatSearchForward
    omap <silent> , <plug>ExtendedFtOperationModeRepeatSearchBackward
    omap <silent> f <plug>ExtendedFtOperationModeSearchFForward
    omap <silent> F <plug>ExtendedFtOperationModeSearchFBackward
    omap <silent> t <plug>ExtendedFtOperationModeSearchTForward
    omap <silent> T <plug>ExtendedFtOperationModeSearchTBackward

    " Uncomment or copy/paste to your own vimrc to use seek operator
    "nmap <silent> s <plug>ExtendedFtSearchSForward
    "xmap <silent> s <plug>ExtendedFtVisualModeSearchSForward
    "omap <silent> s <plug>ExtendedFtOperationModeSearchSForward

    "nmap <silent> S <plug>ExtendedFtSearchSBackward
    "xmap <silent> S <plug>ExtendedFtVisualModeSearchSBackward
    "omap <silent> S <plug>ExtendedFtOperationModeSearchSBackward
endif

"""""""""""""""""""""""
" Functions
"""""""""""""""""""""""
function! s:InputChar()
    let charNr = getchar()

    if charNr ==# '€F7'
        return '('
    endif

    if charNr ==# '€F8'
        return ')'
    endif

    let char = nr2char(charNr)

    if char == ''
        return ''
    endif

    return escape(char, '\"')
endfunction

function! s:RemoveHighlight()
    silent! call matchdelete(w:highlightId)
endfunction

function! s:AttachAutoCommands()
    augroup ExtendedFtHighlight
        autocmd!
        autocmd InsertEnter,WinLeave,BufLeave <buffer> call <sid>RemoveHighlight() | autocmd! ExtendedFtHighlight * <buffer>
        autocmd CursorMoved <buffer> autocmd ExtendedFtHighlight CursorMoved <buffer> call <sid>RemoveHighlight() | autocmd! ExtendedFtHighlight * <buffer>
    augroup END
endfunction

function! s:Search(count, char, dir, type)

    if a:char ==# ''
        return
    endif

    call s:RunSearch(a:count, a:char, a:dir, a:type)
    let s:lastSearch = a:char
    let s:lastSearchType = a:type

endfunction

function! s:ApplySmartCaseToOtherCharacters(searchStr)

    let searchStr = a:searchStr
    " Apply smart case to key '-'
    if searchStr ==# '-'
        let searchStr = '\(-\|_\)'

    elseif searchStr ==# '/'
        let searchStr = '\(\/\|?\)'

    elseif searchStr ==# "'"
        let searchStr = '\(''\|"\)'

    elseif searchStr ==# '['
        let searchStr = '\([\|{\)'

    elseif searchStr ==# ']'
        let searchStr = '\(]\|}\)'

    elseif searchStr ==# '\'
        let searchStr = '\(\\\||\)'

    elseif searchStr ==# '='
        let searchStr = '\(=\|+\)'

    elseif searchStr ==# '`'
        let searchStr = '\(`\|~\)'
    endif

    return searchStr
endfunction

function! s:RunSearch(count, searchStr, dir, type)

    let searchStr = a:searchStr

    if !exists('g:ExtendedFT_caseOption')
        let caseOption = (searchStr =~# '\v\u') ? '\C' : '\c'
    else
        let caseOption = g:ExtendedFT_caseOption
    endif

    if get(g:, 'ExtendedFT_smartCaseAll', 0)
        let searchStr = s:ApplySmartCaseToOtherCharacters(searchStr)
    endif

    let options = (a:dir ==# 'f') ? 'W' : 'Wb'

    let pattern = caseOption . searchStr

    if a:type ==# 't'
        if a:dir ==# 'f'
            let pattern = '\.' . pattern
        else
            let pattern = pattern . '\zs'
        endif
    elseif a:type ==# 'p'
        let pattern = pattern . '\zs'
    endif

    let cnt = a:count > 0 ? a:count : 1

    for i in range(cnt)
        let lineNo = search('\V' . pattern, options . 'n')

        " Only add to jumplist if we're changing line
        if lineNo != line(".")
            normal! m`
        endif

        call search('\V' . pattern, options)
    endfor

    call s:RemoveHighlight()
    call s:AttachAutoCommands()

    let matchQuery = '\V' . pattern

    if len(a:searchStr) == 1
        let currentLine = line('.')
        " Only show the matches in the above and below lines
        let matchQuery = matchQuery .'\%>' . (currentLine-2) . 'l\%<' . (currentLine + 2) . 'l'
        echom matchQuery
    endif

    let w:highlightId = matchadd('Search', matchQuery, 2, get(w:, 'highlightId', -1))
    let g:fullSearch = 0
endfunction

function! s:RepeatSearchForward(count, mode)
    if empty(s:lastSearch)
        echo 'Nothing to repeat'
    else
        call s:RunSearch(a:count, s:lastSearch, 'f', s:lastSearchType)

        if a:mode ==# 'o'
            " Not 100% sure why this is necessary in this case but it is
            normal! l
        endif
    endif
endfunction

function! s:RepeatSearchBackward(count)
    if empty(s:lastSearch)
        echo 'Nothing to repeat'
    else
        call s:RunSearch(a:count, s:lastSearch, 'b', s:lastSearchType)
    endif
endfunction
