if exists('g:loaded_makenotes') || &compatible
    finish
endif
let g:loaded_makenotes = 1

function! SaveNote(location)
    let l:input = input('Filename: ')
    if l:input != ''
        let l:title = expand(a:location) . strftime('%F') . '-' . l:input . '.mkd.txt'
        execute 'saveas ' . l:title
    else
        redraw!
    endif
endfunction

function! NewNote(location)
    let l:input = input('Note title: ')
    if l:input != ''
        let l:title = expand(a:location) . strftime('%F') . '-' . l:input . '.mkd.txt'
        execute 'edit ' . l:title
        let failed = append(0, ['# ' . l:input, ''])
    else
        redraw!
    endif
endfunction
