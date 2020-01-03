if exists('g:loaded_makenotes') || &compatible
    finish
endif
let g:loaded_makenotes = 1

function s:MakeNote(location, new) abort
    let l:title = join(split(input('Note title: ')), '-')

    if l:title !=# ''
        let l:filename = expand(a:location) . strftime('%F') . '-' . l:title . '.mkd'
        if a:new
            execute 'split ' . l:filename
            let failed = append(0, ['# ' . l:title, ''])
        else
            execute 'saveas ' . l:filename
        endif
    else
        redraw!
    endif
endfunction

function! make_notes#SaveNote(location) abort
    call <SID>MakeNote(a:location, 0)
endfunction

function! make_notes#NewNote(location) abort
    call <SID>MakeNote(a:location, 1)
endfunction
