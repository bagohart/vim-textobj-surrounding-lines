" Reload guard {{{
if &compatible || exists("g:loaded_textobj_surrounding_lines")
    finish
endif
" }}}

" Options {{{
let g:textobj_surrounding_lines_enabled = get(g:, "textobj_surrounding_lines_enabled", 0)
let g:textobj_surrounding_lines_numbers = get(g:, "textobj_surrounding_lines_numbers", [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30])
let g:textobj_surrounding_prefix = get(g:, "textobj_surrounding_prefix", "i")
let g:textobj_surrounding_postfix = get(g:, "textobj_surrounding_postfix", "l")
" }}}

if g:textobj_surrounding_lines_enabled == 0
    finish
endif
        
for i in g:textobj_surrounding_lines_numbers " {{{
    let key_sequence = g:textobj_surrounding_prefix . i . g:textobj_surrounding_postfix
    " activate visual line mode, go i lines up, change visual mode cursor side, go i lines down
    " Vimscript metaprogramming is so much fun u_U
    execute "onoremap " . key_sequence . " :\<C-u> normal! V" . i . 'ko' . i . 'j' . "\<CR>"
    execute "xnoremap " . key_sequence . " \<Esc>:\<C-u> normal! V" . i . 'ko' . i . 'j' . "\<CR>"
endfor " }}}

let g:loaded_textobj_surrounding_lines = 1
