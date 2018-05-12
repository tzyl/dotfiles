" Vim color file

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="0x7A69_dark_custom"

" custom from 1989
let s:dark_gray = [236, "#303030"]
let s:mid_gray = [102, "#878787"]
let s:default_white = [231, "#FFFFFF"]

let s:lavender = [183, "#dfafff"]
let s:light_purple = [225, "#ffdfff"]
let s:gray_purple = [146, "#afafd7"]

let s:pink = [218, "#ffafdf"]
let s:light_blue = [159, "#afffff"]
let s:mint = [158, "#afffd7"]
let s:light_yellow = [229, "#ffffaf"]

let s:dark_pink = [197, "#ff005f"]
let s:dark_green = [29, "#00875f"]
let s:dark_blue = [31, "#0087af"]

let s:none = ["NONE", ""]


function! <SID>set_hi(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

hi Normal	guifg=#aaaaaa guibg=#1f1f1f					" цвет фона

" highlight groups
hi Cursor      	guifg=NONE    guibg=grey40 gui=none
"hi Cursor 	guifg=NONE    guibg=#f0e68c gui=none
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
"hi LineNr
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=grey0 guifg=grey60 gui=none
hi StatusLineNC	guibg=grey0 guifg=grey60 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment	guifg=#007f7f
hi Constant	guifg=#ffa0a0
hi Identifier	guifg=palegreen cterm=bold 
hi Statement	guifg=khaki
hi PreProc	guifg=indianred
hi Type		guifg=darkkhaki
hi Special	guifg=navajowhite
"hi Underlined
hi Ignore	guifg=grey40
"hi Error
hi Todo		guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
call <SID>set_hi("DiffAdd", s:default_white, s:dark_green, "bold")
call <SID>set_hi("DiffDelete", s:dark_pink, s:none, "NONE")
call <SID>set_hi("DiffChange", s:default_white, s:dark_gray, "NONE")
call <SID>set_hi("DiffText", s:default_white, s:dark_blue, "bold")
" hi DiffAdd	ctermbg=4
" hi DiffChange	ctermbg=5
" hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
" hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1

hi Pmenu       	guifg=#f6f3e8 guibg=#444444
hi PmenuSel 	guifg=#000000 guibg=#cae682
hi ColorColumn 	term=reverse ctermbg=4 guibg=grey18 
hi MatchParen	term=reverse ctermbg=3 guibg=red4
hi lCursor 	guifg=NONE guibg=Cyan 	
hi CursorLine 	term=underline cterm=underline guibg=grey14



"vim: sw=4
