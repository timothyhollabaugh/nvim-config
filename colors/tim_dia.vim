" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "tim_dia"

hi Normal ctermbg=White ctermfg=Black guifg=none guibg=none

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMg term=standout ctermfg=Red
hi IncSearch term=underline,italic cterm=underline,italic gui=underline,italic
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
"hi VertSplit term=reverse cterm=reverse gui=reverse
hi VertSplit ctermbg=White ctermfg=Black gui=None guifg=#999999 guibg=none
hi Visual term=reverse ctermbg=black guibg=grey60
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=#444444 guifg=none
hi lCursor guibg=Cyan guifg=Black
hi Directory term=bold cterm=bold ctermfg=none gui=bold guifg=none
hi LineNr term=underline ctermfg=Grey guifg=Grey
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
" hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey30
hi NonText term=bold ctermfg=White gui=bold guifg=#c3c3c3
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
"hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Search term=underline cterm=underline ctermbg=none gui=underline guibg=none
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
hi CursorColumn term=reverse ctermbg=Black guibg=#f9f9f9
hi CursorLine term=none cterm=none guibg=none
hi CursorLineNR term=bold cterm=bold gui=bold guifg=none
hi SignColumn ctermbg=None ctermfg=None guifg=None guibg=None
hi MatchParen term=bold cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none
hi Comment term=italic cterm=italic ctermfg=Grey gui=italic guifg=#999999 guibg=none
hi SpecialComment term=none cterm=none ctermfg=Grey gui=none guifg=#999999 guibg=none
hi Todo term=italic,bold cterm=italic,bold ctermbg=none ctermfg=none gui=italic,bold guibg=none guifg=none
hi ColorColumn guibg=#f9f9f9
hi Operator term=none, cterm=none, gui=none

hi DiffAdd guifg=none guibg=#6dc071
hi DiffDelete guifg=none guibg=#ff4b47
hi DiffChange guifg=none guibg=#ffa747
hi DiffText guifg=none guibg=#1d90cd


" Autocomplete
hi Pmenu guibg=#dcdad5
hi PmenuSel guibg=#c3c3c3

" Language client
hi LspDiagnosticsVirtualTextError term=bold cterm=bold ctermfg=red gui=bold guifg=#ff4b47
hi LspDiagnosticsUnderlineError term=underline cterm=underline ctermfg=Red gui=underline guifg=#ff4b47
hi LspDiagnosticsSignError cterm=bold ctermfg=red gui=bold guifg=#ff4b47
hi LspDiagnosticsFloatingError cterm=bold ctermfg=red gui=bold guifg=#ff4b47

hi LspDiagnosticsVirtualTextWarning term=bold cterm=bold ctermfg=red gui=bold guifg=#ffbf00
hi LspDiagnosticsUnderlineWarning term=underline cterm=underline ctermfg=Yellow gui=underline guifg=#ffbf00
hi LspDiagnosticsSignWarning cterm=bold ctermfg=Yellow gui=bold guifg=#ffbf00
hi LspDiagnosticsFloatingWarning cterm=bold ctermfg=Yellow gui=bold guifg=#ffbf00

hi LspDiagnosticsVirtualTextInformation term=bold cterm=bold ctermfg=red gui=bold guifg=blue
hi LspDiagnosticsUnderlineInformation term=underline cterm=underline gui=underline guifg=blue
hi LspDiagnosticsSignInformation cterm=bold ctermfg=Black gui=bold guifg=blue
hi LspDiagnosticsFloatingInformation cterm=bold ctermfg=Black gui=bold guifg=blue

hi LspDiagnosticsVirtualTextHint term=bold cterm=bold ctermfg=red gui=bold guifg=#999999
hi LspDiagnosticsUnderlineHint term=underline cterm=underline gui=underline
hi LspDiagnosticsSignHint cterm=none ctermfg=Black gui=none guifg=#999999
hi LspDiagnosticsFloatingHint cterm=bold ctermfg=Black gui=bold guifg=#999999

hi NormalFloat guibg=#f9f9f9

hi Error cterm=bold ctermfg=red gui=bold guibg=none guifg=#ff4b47
hi ErrorMsg cterm=bold ctermfg=red gui=bold guibg=none guifg=#ff4b47
hi WarningMsg cterm=bold ctermfg=Yellow gui=bold guifg=#ffbf00


hi SpellBad term=underline cterm=underline ctermfg=Red gui=underline guifg=#ff4b47
hi SpellCap term=underline cterm=underline ctermfg=Yellow gui=underline guifg=#ffbf00
hi SpellRare term=underline cterm=underline gui=underline guifg=blue
hi SpellLocal term=underline cterm=underline gui=underline guifg=Green

" Groups for syntax highlighting
hi Constant term=italic cterm=italic ctermfg=none gui=italic guifg=none
hi Special term=bold ctermfg=none  guifg=none
hi Statement term=bold cterm=bold ctermfg=none guifg=none gui=bold guifg=#f74c00
hi Title term=bold cterm=bold ctermfg=none guifg=none gui=bold guifg=#f74c00
hi Include term=bold cterm=bold ctermfg=none guifg=none gui=bold guifg=#f74c00
hi Type term=bold cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none
hi Ignore ctermfg=DarkGrey guifg=grey20
hi PreProc term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi Function term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi Identifier term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi vimHiKeyList term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi vimHiAttribList term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi vimHiAttrib term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi vimVar term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none

" Language specific highlighting
hi rustAttribute term=none cterm=none ctermfg=Grey gui=none guifg=#999999 guibg=none
hi rustDerive term=none cterm=none ctermfg=Grey gui=none guifg=#999999 guibg=none
hi rustDeriveTrait term=bold cterm=bold ctermfg=Grey gui=bold guifg=#999999 guibg=bold

hi elmType term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi elmOperator term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi elmImport term=bold cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none
hi elmTopLevelFunction term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi elmFuncName term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none

hi sqlPsqlCommand gui=bold
hi sqlPlpgsqlKeyword gui=bold
hi sqlKeyword gui=bold
hi sqlTable guifg=none

hi javaExternal gui=bold

hi logOperator term=none cterm=none ctermbg=none ctermfg=none gui=none guibg=none guifg=none
hi logDomain term=underline cterm=underline ctermbg=none ctermfg=none gui=underline guibg=none guifg=none
hi logFilePath term=underline cterm=underline ctermbg=none ctermfg=none gui=underline guibg=none guifg=none
hi logLevelWarning term=bold cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none
hi logLevelError term=bold cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none

hi StatusLine term=underline cterm=underline ctermbg=none ctermfg=none gui=underline guibg=none guifg=none
hi StatusLineNC term=underline cterm=underline ctermbg=none ctermfg=none gui=underline guibg=none guifg=#999999

hi WildMenu term=underline,bold cterm=underline,bold ctermbg=none ctermfg=none gui=underline,bold guibg=none guifg=none


" vim: sw=2
