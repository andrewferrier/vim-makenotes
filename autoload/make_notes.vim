if exists('g:loaded_makenotes') || &compatible
    finish
endif
let g:loaded_makenotes = 1

function! make_notes#SaveNote(location)
    let l:input = input('Filename slug: ')
    if l:input !=# ''
        let l:title = expand(a:location) . strftime('%F') . '-' . l:input . '.mkd.txt'
        execute 'saveas ' . l:title
    else
        redraw!
    endif
endfunction

function! make_notes#NewNote(location)
    let l:input = input('Note title: ')
    if l:input !=# ''
        let l:title = expand(a:location) . strftime('%F') . '-' . l:input . '.mkd.txt'
        execute 'edit ' . l:title
        let failed = append(0, ['# ' . l:input, ''])
    else
        redraw!
    endif
endfunction
