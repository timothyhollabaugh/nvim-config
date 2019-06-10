" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "tim_light"

"hi Normal ctermbg=DarkGrey ctermfg=White guifg=White guibg=grey20
hi Normal ctermbg=White ctermfg=Black guifg=#333333 guibg=#f0f0f0

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermfg=Red
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse ctermbg=black guibg=grey60
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=#444444 guifg=#f0f0f0
hi lCursor guibg=Cyan guifg=Black
hi Directory term=bold ctermfg=Blue guifg=Blue
hi LineNr term=underline ctermfg=Grey guifg=Grey
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
" hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey30
hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=#f0f0f0
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
"hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Search term=underline,italic cterm=underline,italic gui=underline,italic guibg=none
hi IncSearch term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi SpecialKey term=bold ctermfg=LightBlue guifg=Cyan
hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
"hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi Folded term=standout ctermbg=Black ctermfg=LightGrey guibg=Back guifg=#999999
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
hi CursorColumn term=reverse ctermbg=Black guibg=grey40
hi CursorLine term=underline cterm=underline guibg=grey40
hi CursorLineNR term=bold cterm=bold gui=bold
hi SignColumn ctermbg=DarkGrey ctermfg=White guifg=#444444 guibg=#f0f0f0
hi MatchParen term=bold cterm=bold ctermbg=none gui=bold guibg=none

" Autocomplete
hi Pmenu guibg=#dcdad5
hi PmenuSel guibg=#c3c3c3

" Language client
hi ErrorText term=underline cterm=underline ctermfg=Red gui=underline guifg=#ff4b47
hi ErrorSign cterm=bold ctermfg=red gui=bold guifg=#ff4b47
hi ErrorDesc term=italic cterm=italic ctermfg=red gui=italic guifg=#c3c3c3
hi WarningText term=underline cterm=underline ctermfg=Yellow gui=underline guifg=#ffc800
hi WarningSign cterm=bold ctermfg=Yellow gui=bold guifg=#ffc800
hi WarningDesc term=italic cterm=italic ctermfg=red gui=italic guifg=#c3c3c3
hi InfoText term=underline cterm=underline gui=underline
hi InfoSign cterm=bold ctermfg=Black gui=bold guifg=Black
hi InfoDesc term=italic cterm=italic ctermfg=red gui=italic guifg=#c3c3c3

" Groups for syntax highlighting
hi Constant term=underline ctermfg=Magenta guifg=#1a80b6
hi Special term=bold ctermfg=LightRed guifg=#cd1dca
if &t_Co > 8
  hi Statement term=bold cterm=bold ctermfg=Red guifg=#ff4b47 gui=bold
endif
hi Ignore ctermfg=DarkGrey guifg=grey20

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/


" vim: sw=2
