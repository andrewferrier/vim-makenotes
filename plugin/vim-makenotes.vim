if exists('g:loaded_makenotes') || &compatible
    finish
endif
let g:loaded_makenotes = 1

function! SaveNote(location)
    let l:title = expand(a:location) . strftime('%F') . '-' . input('Filename: ') . '.mkd.txt'
    execute 'saveas ' . l:title
endfunction

function! NewNote(location)
    let l:input = input('Note title: ')
    let l:title = expand(a:location) . strftime('%F') . '-' . l:input . '.mkd.txt'
    execute 'edit ' . l:title
    let failed = append(0, ['# ' . l:input, ''])
endfunction
