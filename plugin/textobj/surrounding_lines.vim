" Reload guard {{{
if &compatible || exists("g:loaded_textobj_surrounding_lines")
    " todo
    " finish
endif
let g:loaded_textobj_surrounding_lines = 1
" }}}

" Options {{{
let g:textobj_surrounding_lines_numbers = get(g:, "textobj_surrounding_lines_numbers", [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30])
let g:textobj_surrounding_prefix = get(g:,"textobj_surrounding_prefix", "i")
let g:textobj_surrounding_postfix = get(g:, "textobj_surrounding_postfix", "l")
" }}}

" for i in g:textobj_surrounding_lines_numbers
"     " _ not allowed?
"     call textobj#user#plugin('surroundinglines' . i, {
" 	\   '-': {
" 	\     'select-function': 'textobj#surrounding_lines#select' . i,
" 	\     'select': g:textobj_surrounding_prefix . i . g:textobj_surrounding_postfix
" 	\   },
" 	\ })
" endfor

for i in g:textobj_surrounding_lines_numbers
    let key_sequence = g:textobj_surrounding_prefix . i . g:textobj_surrounding_postfix
    " echom key_sequence
    execute "onoremap " . key_sequence . " :\<C-u>call textobj#surrounding_lines#select_with_number(" . i . ")\<CR>"
    execute "xnoremap " . key_sequence . " :\<C-u>call textobj#surrounding_lines#select_with_number(" . i . ")\<CR>"
endfor

" onoremap i2l ":\<C-u>call textobj#surrounding_lines#select_with_number(" . i . ")\\<CR>"

" execute "nnoremap <leader>K :echom \"execute nnoremap works\"\<CR>"


function! textobj#surrounding_lines#select_with_number(number) abort " {{{
    echom "Called select_with_number(" . a:number . ")"
    let save_cursor = getpos('.')
    execute 'normal! ' . a:number . '-'
    let start = getpos('.')
    redraw
    normal! m<
    call setpos('.', save_cursor)
    execute 'normal! ' . a:number . '+'
    let end = getpos('.')
    redraw
    normal! m>
    " return ['V', start, end]
    normal! gvV
endfunction " }}}

" {{{
" todo
" Maybe there's a way to use execute and a for loop, but I couldn't get that to work
" So let's do this the hard way...
    " function! textobj#surrounding_lines#select1()
    "     return textobj#surrounding_lines#select_with_number(1)
    " endfunction

    " function! textobj#surrounding_lines#select2()
    "     return textobj#surrounding_lines#select_with_number(2)
    " endfunction

    " function! textobj#surrounding_lines#select3()
    "     return textobj#surrounding_lines#select_with_number(3)
    " endfunction

    " function! textobj#surrounding_lines#select4()
    "     return textobj#surrounding_lines#select_with_number(4)
    " endfunction

    " function! textobj#surrounding_lines#select5()
    "     return textobj#surrounding_lines#select_with_number(5)
    " endfunction

    " function! textobj#surrounding_lines#select6()
    "     return textobj#surrounding_lines#select_with_number(6)
    " endfunction

    " function! textobj#surrounding_lines#select7()
    "     return textobj#surrounding_lines#select_with_number(7)
    " endfunction

    " function! textobj#surrounding_lines#select8()
    "     return textobj#surrounding_lines#select_with_number(8)
    " endfunction

    " function! textobj#surrounding_lines#select9()
    "     return textobj#surrounding_lines#select_with_number(9)
    " endfunction

    " function! textobj#surrounding_lines#select10()
    "     return textobj#surrounding_lines#select_with_number(10)
    " endfunction

    " function! textobj#surrounding_lines#select11()
    "     return textobj#surrounding_lines#select_with_number(11)
    " endfunction

    " function! textobj#surrounding_lines#select12()
    "     return textobj#surrounding_lines#select_with_number(12)
    " endfunction

    " function! textobj#surrounding_lines#select13()
    "     return textobj#surrounding_lines#select_with_number(13)
    " endfunction

    " function! textobj#surrounding_lines#select14()
    "     return textobj#surrounding_lines#select_with_number(14)
    " endfunction

    " function! textobj#surrounding_lines#select15()
    "     return textobj#surrounding_lines#select_with_number(15)
    " endfunction

    " function! textobj#surrounding_lines#select16()
    "     return textobj#surrounding_lines#select_with_number(16)
    " endfunction

    " function! textobj#surrounding_lines#select17()
    "     return textobj#surrounding_lines#select_with_number(17)
    " endfunction

    " function! textobj#surrounding_lines#select18()
    "     return textobj#surrounding_lines#select_with_number(18)
    " endfunction

    " function! textobj#surrounding_lines#select19()
    "     return textobj#surrounding_lines#select_with_number(19)
    " endfunction

    " function! textobj#surrounding_lines#select20()
    "     return textobj#surrounding_lines#select_with_number(20)
    " endfunction

    " function! textobj#surrounding_lines#select21()
    "     return textobj#surrounding_lines#select_with_number(21)
    " endfunction

    " function! textobj#surrounding_lines#select22()
    "     return textobj#surrounding_lines#select_with_number(22)
    " endfunction

    " function! textobj#surrounding_lines#select23()
    "     return textobj#surrounding_lines#select_with_number(23)
    " endfunction

    " function! textobj#surrounding_lines#select24()
    "     return textobj#surrounding_lines#select_with_number(24)
    " endfunction

    " function! textobj#surrounding_lines#select25()
    "     return textobj#surrounding_lines#select_with_number(25)
    " endfunction

    " function! textobj#surrounding_lines#select26()
    "     return textobj#surrounding_lines#select_with_number(26)
    " endfunction

    " function! textobj#surrounding_lines#select27()
    "     return textobj#surrounding_lines#select_with_number(27)
    " endfunction

    " function! textobj#surrounding_lines#select28()
    "     return textobj#surrounding_lines#select_with_number(28)
    " endfunction

    " function! textobj#surrounding_lines#select29()
    "     return textobj#surrounding_lines#select_with_number(29)
    " endfunction

    " function! textobj#surrounding_lines#select30()
    "     return textobj#surrounding_lines#select_with_number(30)
    " endfunction
    " " }}}

