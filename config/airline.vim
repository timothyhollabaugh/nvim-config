
let g:airline_collapse = 0
let g:airline_theme='tim'

let g:airline_mode_map = {
            \ '__'     : '-',
            \ 'c'      : 'c',
            \ 'i'      : 'i',
            \ 'ic'     : 'ic',
            \ 'ix'     : 'ix',
            \ 'n'      : 'n',
            \ 'multi'  : 'm',
            \ 'ni'     : 'ni',
            \ 'no'     : 'no',
            \ 'R'      : 'R',
            \ 'Rv'     : 'Rv',
            \ 's'      : 's',
            \ 'S'      : 'S',
            \ ''     : '^s',
            \ 't'      : 't',
            \ 'v'      : 'v',
            \ 'V'      : 'V',
            \ ''     : '^v',
            \ }

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.whitespace = ''

"let g:airline_section_a = 'mode, crypt, paste, spell, iminsert'
"let g:airline_section_b = 'hunks, branch'
"let g:airline_section_c = 'bufferline or filename'
"let g:airline_section_gutter = 'readonly, csv'
"let g:airline_section_x = 'tagbar, filetype, virtualenv'
"let g:airline_section_y = 'fileencoding, fileformat'
"let g:airline_section_z = 'percentage, line number, column number'
"let g:airline_section_error = 'ycm_error_count, syntastic-err, eclim, languageclient_error_count'
"let g:airline_section_warning = 'ycm_warning_count, syntastic-warn, languageclient_warning_count, whitespace'

let g:airline#extensions#whitespace#enabled = 0

function! AirlineInit()
    call airline#parts#define_accent('mode', 'red')
    "call airline#parts#define('mode', { 'accent': 'none' })
    "let g:airline_section_a = airline#section#create(['mode'])
    "let g:airline_section_b = airline#section#create(['hunks','branch'])
    "let g:airline_section_c = airline#section#create(['filename'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
