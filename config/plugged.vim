call plug#begin()

" Autocomplete
" Plug 'zxqfl/tabnine-vim'
"Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" provides autocomplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Makes deoplete work with nvim-lsp
"Plug 'Shougo/deoplete-lsp'

" LanguageClient plugin
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"\ }

Plug 'neovim/nvim-lspconfig'

" Extentions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

"Plug 'haorenW1025/diagnostic-nvim'

Plug 'preservim/nerdtree'

" Vim language completions
"Plug 'Shougo/neco-vim'

" Showing function signature and inline doc.
"Plug 'Shougo/echodoc.vim'

" status bar at bottom
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" Lightlight
"Plug 'itchyny/lightline.vim'

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
"Plug 'janko-m/vim-test'

" Floobits
Plug 'floobits/floobits-neovim'

" Minimap
"Plug 'severin-lemaignan/vim-minimap'

"Postgresql
"Plug 'lifepillar/pgsql.vim'
"Plug 'martingms/vipsql'

" Show marks
"Plug 'kshenoy/vim-signature'

" Mathmatica
"Plug 'voldikss/vim-mma'

" ipython
"Plug 'ivanov/vim-ipython'

call plug#end()
