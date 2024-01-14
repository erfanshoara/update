" Vim syntax file
" Language:		note files
" Maintainer:	
" Last Change:	Jan 12, 2024

" Quit when a (custom) syntax file was already loaded
"if exists("b:current_syntax")
"  finish
"endif

"syn keyword	confTodo	contained TODO FIXME XXX
"" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
"syn match	confComment	"^#.*" contains=confTodo,@Spell
"syn match	confComment	"\s#.*"ms=s+1 contains=confTodo,@Spell
"syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
"syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
"
"" Define the default highlighting.
"" Only used when an item doesn't have highlighting yet
"hi def link confComment	Comment
"hi def link confTodo	Todo
"hi def link confString	String

" ---------
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

