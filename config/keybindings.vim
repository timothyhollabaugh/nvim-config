
" Map the leader key to SPACE
let mapleader="\<SPACE>"

" language client
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> M :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" deoplete tab-complete
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
inoremap <expr> <C-K> pumvisible() ? "\<C-p>" : "\<C-K>"

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" moving around buffers
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <A-w> <C-\><C-n><C-w>w

nnoremap <A-w> <C-w>w
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" resizing splits
nnoremap <A-.> <C-w>>
nnoremap <A-,> <C-w><
nnoremap <A-=> <C-w>+
nnoremap <A--> <C-w>-
nnoremap <A-0> <C-w>=

nmap <leader>s :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
