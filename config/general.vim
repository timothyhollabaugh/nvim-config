
set mouse=a

set foldmethod=syntax

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set cursorline          " Highlight the current line
" set formatoptions+=o    " Continue comment marker in new lines.
" set textwidth=0         " Hard-wrap long lines as you type them.

set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
set listchars=tab:│\ ,trail:-,extends:>,precedes:<,nbsp:+
set list                " Show problematic characters.

" set ignorecase          " Make searching case insensitive
" set smartcase           " ... unless the query has capital letters.
" set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" call NumberToggle()

set colorcolumn=75

" gcode language
au BufRead,BufNewFile *.gcode,*.gco,*.gc,*.nc :setfiletype gcode

" openscad indents
au BufRead,BufNewFile *.scad :set smartindent
au BufRead,BufNewFile *.scad :set cindent
au BufRead,BufNewFile *.scad :set tabstop=2
au BufRead,BufNewFile *.scad :set shiftwidth=2

let g:vimtex_compiler_latexmk = {
\ 'options' : [
\   '-xelatex',
\ ],
\}

" pgsql language
let g:sql_type_default = 'pgsql'

function! ConfigFiles(ArgLead, CmdLine, CursorPos)
    return system("fd . ~/.config/nvim/ | sed 's$^.*config/nvim/$$'")
endfunction

command! -nargs=1 -complete=custom,ConfigFiles Config e ~/.config/nvim/<args>
command! Reload so ~/.config/nvim/init.vim

command! Tab set  noexpandtab
command! Space set  expandtab
