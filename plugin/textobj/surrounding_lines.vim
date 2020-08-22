" Reload guard {{{
if &compatible || exists("g:loaded_textobj_surrounding_lines")
    " todo
    " finish
endif
let g:loaded_textobj_surrounding_lines = 1
" }}}

" Options {{{
let g:textobj_surrounding_lines_enabled = get(g:, "textobj_surrounding_lines_enabled", 0)
let g:textobj_surrounding_lines_numbers = get(g:, "textobj_surrounding_lines_numbers", [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30])
let g:textobj_surrounding_prefix = get(g:, "textobj_surrounding_prefix", "i")
let g:textobj_surrounding_postfix = get(g:, "textobj_surrounding_postfix", "l")
" }}}

if g:textobj_surrounding_lines_enabled == 0
    " todo
    " finish
endif
        
for i in g:textobj_surrounding_lines_numbers " {{{
    let key_sequence = g:textobj_surrounding_prefix . i . g:textobj_surrounding_postfix
    " execute "onoremap " . key_sequence . " :\<C-u>call textobj#surrounding_lines#select_with_number(" . i . ")\<CR>"
    execute "onoremap " . key_sequence . " :\<C-u> normal! V" . i . 'ko' . i . 'j' . "\<CR>"
    " execute "xnoremap " . key_sequence . " :\<C-u>call textobj#surrounding_lines#select_with_number(" . i . ")\<CR>"
    execute "xnoremap " . key_sequence . " :\<C-u> normal! V" . i . 'ko' . i . 'j' . "\<CR>"
endfor " }}}

function! textobj#surrounding_lines#select_with_number(number) " {{{
    execute 'normal! V' . a:number . 'ko' . a:number . 'j'
endfunction " }}}

