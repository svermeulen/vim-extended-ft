
"""""""""""""""""""""""
" Variables
"""""""""""""""""""""""
let s:lastSearch = ''
let s:lastSearchType = 'f'
let s:lastSearchDir = 'f'

"""""""""""""""""""""""
" Plugs
"""""""""""""""""""""""

nnoremap <plug>ExtendedFtForceEnableHighlight :call <sid>EnableHighlight()<cr>

nnoremap <plug>ExtendedFtRepeatSearchForward :<c-u>call <sid>RepeatSearchForward(v:count, 'n')<cr>
nnoremap <plug>ExtendedFtRepeatSearchBackward :<c-u>call <sid>RepeatSearchBackward(v:count, 'n')<cr>

nnoremap <plug>ExtendedFtRepeatSearchCenterForward :<c-u>call <sid>RepeatSearchForward(v:count, 'n')<cr>zz
nnoremap <plug>ExtendedFtRepeatSearchCenterBackward :<c-u>call <sid>RepeatSearchBackward(v:count, 'n')<cr>zz

nnoremap <expr> <silent> <plug>ExtendedFtSearchFForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "f", "f", "n")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchFBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "b", "f", "n")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchTForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "f", "t", "n")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchTBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . '", "b", "t", "n")<cr>'

xnoremap <expr> <plug>ExtendedFtRepeatSearchForward '<esc>:<c-u>call <sid>RepeatSearchForward('. v:count . ', "x")<cr>m>gv'
xnoremap <expr> <plug>ExtendedFtRepeatSearchBackward '<esc>:<c-u>call <sid>RepeatSearchBackward('. v:count . ', "x")<cr>m>gv'

xnoremap <expr> <silent> <plug>ExtendedFtSearchFForward '<esc>`>:<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "f", "x")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtSearchFBackward '<esc>:<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "f", "x")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtSearchTForward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "t", "x")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtSearchTBackward '<esc>:<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "t", "x")<cr>m>gv'

onoremap <plug>ExtendedFtRepeatSearchForward :call <sid>RepeatSearchForward(v:count, 'o')<cr>
onoremap <plug>ExtendedFtRepeatSearchBackward :call <sid>RepeatSearchBackward(v:count, 'o')<cr>

onoremap <expr> <silent> <plug>ExtendedFtSearchFForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "p", "o")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtSearchFBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "f", "o")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtSearchTForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "f", "f", "o")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtSearchTBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . '", "b", "p", "o")<cr>'

" Seek = search using two characters instead of just one
nnoremap <expr> <silent> <plug>ExtendedFtSearchSForward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . <sid>InputChar() . '", "f", "f", "n")<cr>'
nnoremap <expr> <silent> <plug>ExtendedFtSearchSBackward ':<c-u>call <sid>Search('. v:count . ', "' . <sid>InputChar() . <sid>InputChar() . '", "b", "f", "n")<cr>'

xnoremap <expr> <silent> <plug>ExtendedFtSearchSForward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "f", "f", "x")<cr>m>gv'
xnoremap <expr> <silent> <plug>ExtendedFtSearchSBackward ':<c-u>call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "b", "f", "x")<cr>m>gv'

onoremap <expr> <silent> <plug>ExtendedFtSearchSForward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "f", "p", "o")<cr>'
onoremap <expr> <silent> <plug>ExtendedFtSearchSBackward ':call <sid>Search('. v:count . ', "'. <sid>InputChar() . <sid>InputChar() . '", "b", "f", "o")<cr>'

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

    xmap <silent> ; <plug>ExtendedFtRepeatSearchForward
    xmap <silent> , <plug>ExtendedFtRepeatSearchBackward
    xmap <silent> f <plug>ExtendedFtSearchFForward
    xmap <silent> F <plug>ExtendedFtSearchFBackward
    xmap <silent> t <plug>ExtendedFtSearchTForward
    xmap <silent> T <plug>ExtendedFtSearchTBackward

    omap <silent> ; <plug>ExtendedFtRepeatSearchForward
    omap <silent> , <plug>ExtendedFtRepeatSearchBackward
    omap <silent> f <plug>ExtendedFtSearchFForward
    omap <silent> F <plug>ExtendedFtSearchFBackward
    omap <silent> t <plug>ExtendedFtSearchTForward
    omap <silent> T <plug>ExtendedFtSearchTBackward

    " Uncomment or copy/paste to your own vimrc to use seek operator
    "nmap <silent> s <plug>ExtendedFtSearchSForward
    "xmap <silent> s <plug>ExtendedFtSearchSForward
    "omap <silent> s <plug>ExtendedFtSearchSForward

    "nmap <silent> S <plug>ExtendedFtSearchSBackward
    "xmap <silent> S <plug>ExtendedFtSearchSBackward
    "omap <silent> S <plug>ExtendedFtSearchSBackward
endif

"""""""""""""""""""""""
" Functions
"""""""""""""""""""""""

function! s:AttachSearchToggleAutoCommands()
    augroup SearchTypeToggle
        autocmd!
        autocmd InsertEnter,WinLeave,BufLeave <buffer> autocmd! SearchTypeToggle * <buffer>
        "set up *nested* CursorMoved autocmd to skip the _first_ CursorMoved event.
        autocmd CursorMoved <buffer> autocmd SearchTypeToggle CursorMoved <buffer> autocmd! SearchTypeToggle * <buffer>
    augroup END
endfunction

function! s:InputChar()
    let charNr = getchar()

    if charNr ==# '€F7'
        return 'bracketOpen'
    endif

    if charNr ==# '€F8'
        return 'bracketClose'
    endif

    let char = nr2char(charNr)

    if char == ''
        return ''
    endif

    return escape(char, '\"')
endfunction

function! s:RemoveHighlight()
    silent! call matchdelete(w:charHighlightId)
    let w:charHighlightId = -1
endfunction

function! s:AttachAutoCommands()
    augroup ExtendedFtHighlight
        autocmd!
        autocmd InsertEnter,WinLeave,BufLeave <buffer> call <sid>RemoveHighlight() | autocmd! ExtendedFtHighlight * <buffer>
        autocmd CursorMoved <buffer> autocmd ExtendedFtHighlight CursorMoved <buffer> call <sid>RemoveHighlight() | autocmd! ExtendedFtHighlight * <buffer>
    augroup END
endfunction

function! s:Search(count, char, dir, type, mode)
    exec AssertIsOneOf(a:mode, 'n', 'x', 'o')

    if a:char ==# ''
        return
    endif

    let s:lastSearch = a:char
    let s:lastSearchType = a:type
    let s:lastSearchDir = a:dir

    call s:RunSearch(a:count, a:char, a:dir, a:type, 1, a:mode)

    if a:type ==# 'p' && a:mode ==# 'o'
        " Not 100% sure why this is necessary in this case but it is
        normal! l
    endif
endfunction

function! s:GetPatternFromInput(searchStr, type, dir, forHighlight)

    "echom 'running with ' . 'forHighlight = ' . a:forHighlight . ', dir = ' . a:dir . ', type = ' . a:type . ', searchStr = ' . a:searchStr

    let nonWordChar = '\(\W\|_\)'
    let bolOrNonWordChar = '\(' . nonWordChar . '\|\^\)' 
    let eolOrNonWordChar = '\(' . nonWordChar . '\|\$\)' 

    if a:searchStr ==# '-'
        " Apply smart case to key '-'
        let searchStr = '\(-\|_\)'

    elseif a:searchStr ==# '\'
        let searchStr = '\\'

    elseif a:searchStr ==# 'bracketOpen'
        let searchStr = '\((\|[\|<\|{\)'
        "let searchStr = '\((\)'

    elseif a:searchStr ==# "'"
        let searchStr = '\(''\|"\)'

    elseif a:searchStr ==# 'bracketClose'
        let searchStr = '\()\|]\|>\|}\)'
        "let searchStr = '\()\)'
    else
        let searchStr = a:searchStr
    endif

    if searchStr =~# '\v[A-Z]'
        return '\c' . tolower(searchStr)

    else
        if a:type ==# 'f' || a:type ==# 'p'
            return '\C\(' . searchStr . '\ze' . eolOrNonWordChar . '\|'. bolOrNonWordChar . '\zs' . searchStr . '\|' . toupper(searchStr) . '\)'
        else
            if a:dir == 'f'
                if a:forHighlight
                    return '\C\(' . nonWordChar . '\zs' . searchStr . '\|\.\zs'. searchStr . '\ze' . eolOrNonWordChar . '\|\.\zs' . toupper(searchStr) . '\)'
                else
                    return '\C\(' . nonWordChar . searchStr . '\|\.'. searchStr . '\ze' . eolOrNonWordChar . '\|\.' . toupper(searchStr) . '\)'
                endif
            else
                exec Assert(a:dir ==# 'b')

                if a:forHighlight
                    return '\C\(' . bolOrNonWordChar . '\zs' . searchStr . '\|\.\zs'. searchStr . '\ze' . eolOrNonWordChar . '\|\.\zs' . toupper(searchStr) . '\)'
                else
                    return '\C\(' . bolOrNonWordChar . searchStr . '\zs\|\.'. searchStr . '\zs' . eolOrNonWordChar . '\|\.' . toupper(searchStr) . '\zs\)'
                endif
            endif
        endif
    endif

    return searchStr
endfunction

function! s:RunSearch(count, searchStr, dir, type, shouldSaveMark, mode)

    exec AssertIsOneOf(a:dir, 'f', 'b')
    exec AssertIsOneOf(a:type, 'f', 't', 'p')

    let pattern = s:GetPatternFromInput(a:searchStr, a:type, a:dir, 0)

    call s:MoveCursor(a:count, a:dir, pattern, a:shouldSaveMark, a:mode)
    call s:EnableHighlight()

    call s:AttachSearchToggleAutoCommands()
endfunction

function! s:MoveCursor(count, dir, pattern, shouldSaveMark, mode)

    let cnt = a:count > 0 ? a:count : 1

    let options = (a:dir ==# 'f') ? 'W' : 'Wb'

    for i in range(cnt)
        let newPos = searchpos('\V' . a:pattern, options . 'n')

        if newPos == [0, 0]
            " No match
            continue
        endif

        let minLine = line("w0") + &scrolloff

        if line("w0") > 1 && newPos[0] < minLine
            break
        endif

        if line("$") - line("w$") < &scrolloff
            " Need to ignore &scrolloff when at the bottom of the file
            let maxLine = line("$")
        else
            let maxLine = line("w$") - &scrolloff
        endif

        if newPos[0] > maxLine
            break
        endif

        if newPos[0] != line('.') || newPos[1] != col('.')

            if a:shouldSaveMark
                normal! m`
            endif

            call setpos('.', [bufnr('%'), newPos[0], newPos[1], 0])

            " This is necessary for some reason otherwise sometimes after doing f[char] and going down a line it jumps to a different column
            if col('.') == col('$')-1
                normal! hl
            else
                normal! lh
            endif
        endif
    endfor
endfunction

function! s:EnableHighlight(...)

    if a:0
        let pattern = a:1
    else
        let pattern = s:GetPatternFromInput(s:lastSearch, s:lastSearchType, s:lastSearchDir, 1)
    endif

    call s:RemoveHighlight()
    call s:AttachAutoCommands()

    let matchQuery = '\V' . pattern
    let currentLine = line('.')

    let nextMatchLine = searchpos(matchQuery .'\%>' . currentLine . 'l', 'Wn')[0]
    let prevMatchLine = searchpos(matchQuery .'\%<' . currentLine . 'l', 'bWn')[0]

    if prevMatchLine == 0
        let prevMatchLine = 1
    endif

    if nextMatchLine == 0
        let nextMatchLine = line('$')
    endif

    " Only show the matches in the above and below lines
    let matchQuery = matchQuery .'\%>' . max([0, prevMatchLine-1]) . 'l\%<' . (nextMatchLine+1) . 'l'

    let w:charHighlightId = matchadd('Search', matchQuery, 2, get(w:, 'charHighlightId', -1))
endfunction

function! s:RepeatSearchForward(count, mode)
    if empty(s:lastSearch)
        echo 'Nothing to repeat'
    else
        let shouldSaveMark = (get(w:, "charHighlightId", -1) == -1)
        call s:RunSearch(a:count, s:lastSearch, 'f', s:lastSearchType, shouldSaveMark, a:mode)

        if a:mode ==# 'o'
            " Not 100% sure why this is necessary in this case but it is
            normal! l
        endif
    endif
endfunction

function! s:RepeatSearchBackward(count, mode)
    if empty(s:lastSearch)
        echo 'Nothing to repeat'
    else
        let shouldSaveMark = (get(w:, "charHighlightId", -1) == -1)
        call s:RunSearch(a:count, s:lastSearch, 'b', s:lastSearchType, shouldSaveMark, a:mode)
    endif
endfunction
