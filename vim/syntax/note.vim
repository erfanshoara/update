" syntax/note.vim
" Vim syntax file
" Language:		note files
" Maintainer:	erfan@shoara.net
" Last Change:	Jan 12, 2024


"
"if exists("b:current_syntax")
"  finish
"endif


" defining syntaxes
syntax match Note_Tag		"#\<\w*\>"
syntax match Note_Brace		"[(){}:>]"
syntax match Note_Keyword	"\<[A-Z][A-Z0-9_]*\>"
syntax match Note_Index		"^\zs[0-9a-zA-Z]*\(\.[0-9a-zA-Z]*\)*\ze> "

syntax region Note_String1 start="'" skip="\\\\\|\\'" end="'"
syntax region Note_String2 start='"' skip='\\\\\|\\"' end='"'
syntax region Note_String3 start="`" skip="\\\\\|\\`" end="`"

syntax match Note_ErrorSpc "^\s\{1,\}"
syntax match Note_ErrorLen "^.\{80,\}$"


" applying the highlights
highlight Note_Tag		ctermfg=Blue guifg=Blue
highlight Note_Brace	ctermfg=Brown guifg=Brown
highlight Note_Keyword	ctermfg=Cyan guifg=Cyan
highlight Note_Index	ctermfg=Green guifg=Green
highlight Note_String1	ctermfg=Red guifg=Red
highlight Note_String2	ctermfg=Red guifg=Red
highlight Note_String3	ctermfg=Magenta guifg=Magenta
highlight Note_ErrorSpc	ctermbg=Blue guibg=Blue
highlight Note_ErrorLen	ctermbg=Red guibg=Red

let b:current_syntax = "note"

