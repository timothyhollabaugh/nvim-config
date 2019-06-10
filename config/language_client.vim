
" Automatically start language servers.
let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'javascript' : ['javascript-typescript-stdio'],
    \ 'javascript.jsx' : ['javascript-typescript-stdio'],
    \ 'typescript' : ['javascript-typescript-stdio'],
    \ 'typescript.jsx' : ['javascript-typescript-stdio'],
    \ 'rust' : ['rustup', 'run', 'stable', 'rls'],
    \ 'cpp' : ['clangd'],
    \ 'python': ['pyls'],
    \ 'elm': ['elm-language-server', '--stdio'],
    \ }
" Minimal LSP configuration for JavaScript
autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
autocmd FileType javascript setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType javascript.jsx setlocal omnifunc=LanguageClient#complete
autocmd FileType javascript.jsx setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType rust setlocal omnifunc=LanguageClient#complete
autocmd FileType rust setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType cpp setlocal omnifunc=LanguageClient#complete
autocmd FileType cpp setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType c setlocal omnifunc=LanguageClient#complete
autocmd FileType c setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType python setlocal omnifunc=LanguageClient#complete
autocmd FileType python setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

autocmd FileType elm setlocal omnifunc=LanguageClient#complete
autocmd FileType elm setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

let g:LanguageClient_diagnosticsDisplay =  {
      \ 1: {
          \ "name": "Error",
          \ "texthl": "ErrorText",
          \ "signText": "✖",
          \ "signTexthl": "ErrorSign",
          \ "virtualTexthl": "ErrorDesc",
      \ },
      \ 2: {
          \ "name": "Warning",
          \ "texthl": "WarningText",
          \ "signText": "!",
          \ "signTexthl": "WarningSign",
          \ "virtualTexthl": "WarningDesc",
      \ },
      \ 3: {
          \ "name": "Information",
          \ "texthl": "InfoText",
          \ "signText": "➜",
          \ "signTexthl": "InfoSign",
          \ "virtualTexthl": "InfoDesc",
      \ },
      \ 4: {
          \ "name": "Hint",
          \ "texthl": "InfoText",
          \ "signText": "➤",
          \ "signTexthl": "InfoSign",
          \ "virtualTexthl": "InfoDesc",
      \ },
  \ }

filetype plugin on
set omnifunc=syntaxcomplete#Complete
