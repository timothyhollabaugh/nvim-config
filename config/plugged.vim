call plug#begin()

" Autocomplete
" Plug 'zxqfl/tabnine-vim'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" provides autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" LanguageClient plugin
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
\ }

" Vim language completions
Plug 'Shougo/neco-vim'

" Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

" status bar at bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" syntax support for many languages
Plug 'sheerun/vim-polyglot'

Plug 'Chiel92/vim-autoformat'

" Openscad syntax
Plug 'sirtaj/vim-openscad'

" Latex
Plug 'lervag/vimtex'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Test running
Plug 'janko-m/vim-test'

" API Blueprint
Plug 'kylef/apiblueprint.vim'

" Floobits
Plug 'floobits/floobits-neovim'

" Minimap
Plug 'severin-lemaignan/vim-minimap'

"Postgresql
Plug 'lifepillar/pgsql.vim'
Plug 'martingms/vipsql'

" Show marks
Plug 'kshenoy/vim-signature'

call plug#end()
