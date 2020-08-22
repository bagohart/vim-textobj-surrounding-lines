# vim-textobj-surrounding-lines
A Vim plugin that provides a text object to surround the current line and the `n` lines above and below.

This can be useful when `ip/ap` fail to capture what you want because of annoying newlines, and you don't really care about *exactly* how many lines you select.

## Installation
Install with your favourite package manager or Vim's built-in package management system.
For example using Vim-Plug:
```
Plug 'bagohart/vim-textobj-surrounding-lines'
```
## Configuration
By default, this plugin does nothing.
To make it work, add this line to your vimrc:
```
let g:textobj_surrounding_lines_enabled = 1
```

By default, this will map `i1l`, `i2l` ... `i30l` in visual mode and operator pending mode.

You can change the defaults, e.g. like this:
```
let g:textobj_surrounding_lines_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let g:textobj_surrounding_prefix = "a"
let g:textobj_surrounding_postfix = "XX"
```
Now, it maps `a1XX`, `a2XX`, ... `a10XX` accordingly.

## Requirements
Developed and tested on Neovim 0.4.4, but it should work on Vim 8, too.

## License
The Vim licence applies. See `:help license`.
