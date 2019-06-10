" Required for operations modifying multiple buffers like rename.
set hidden

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

let g:deoplete#enable_at_startup = 1
