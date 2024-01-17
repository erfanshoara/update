" genrc.vim
" default vim setup


" sourcing
" {
source $VIMRUNTIME/defaults.vim
" }


" set
" {
set number
set tabstop=4
set autoindent
set shiftwidth=4
set relativenumber
set autowrite

set cursorlineopt=number
set cursorline
set splitbelow
set splitright
set hlsearch
set wildmenu
set wildmode=list:longest

set completeopt=longest
" }


" map
" {
" general
map B F_
map W f_
noremap Y "+y

" t : tab and window
noremap th :term ++rows=10<CR>
noremap tv :vert term ++rows=10<CR>
noremap tr :vertical resize 84

" <C-f> : file stuff
noremap <C-f><C-c> :execute "sp " . $VIMRC<CR>

" <C-s> : search stuff
noremap <C-s><C-x> :noh<Cr>
"noremap <C-s><C-w> "+yiw:%s/\v(

" <C-p> : putting and printing
noremap <C-p><C-d> "=strftime("%b %d, %Y")<CR>p
inoremap <C-p><C-d> <C-R>=strftime("%b %d, %Y")<CR>

" <C-x> : running, sourcing etc
noremap <C-x><C-x> :execute "source " . $VIMRC<Cr>

" <C-e> : editing the content
noremap <C-e><C-l> :%s/^{$\n$/{/g<Cr>:%s/^$\n}$/}/g<Cr>

noremap <C-e><C-t> :%g/^{$/normal! V%><Cr>:%s/^\(\t*\)\t\([{}]\)$/\1\2/g<Cr>:noh<Cr>
" } -> this is annoying :(((((
noremap <C-e><C-s> :%s/^[ \t]*//<Cr>:noh<Cr>
noremap <C-e><C-w> :%s/\<<C-r><C-w>\>//cg<Left><Left><Left>
" }


" highlight
" {
hi Search ctermfg=0
" }


" filetype
" {
autocmd BufRead,BufNewFile *.note	set filetype=note
autocmd BufRead,BufNewFile *.xxd	set filetype=xxd
" }


" cmd
" {
command Getfp execute "!echo $(pwd)/$(ls %) | xclip -sel clip"
" }


" func
" {
function! UpdateDate()
    let l:date = strftime('%b %d, %Y')
    execute '%s/\(\w\{3\} \d\{2\}, \)\d\{4\}/' . l:date . '/gc'
    write
endfunction

function! UpdateDateAndQuit()
    call UpdateDate()
    quit
endfunction

command! -nargs=0 WriteDate call UpdateDate()
command! -nargs=0 Wq call UpdateDateAndQuit()
cnoreabbrev W WriteDate

"function! GetMatch(pattern)
"	get matched = search(a:pattern)
"	if 1:matched
"		let savereg = @9
"		normal "9ygn
"		let match = @9
"		let @9 = 1:savereg
"	else
"		let match = ""
"	endif
"	return 1:match
"endfunction
" }


" etc
" {
augroup cursor_behaviour
	autocmd!
	" reset cursor on start:
	autocmd VimEnter * silent !echo -ne "\e[2 q"
	" cursor blinking bar on insert mode
	let &t_SI = "\e[5 q"
	" cursor steady block on command mode
	let &t_EI = "\e[2 q"
	" highlight current line when in insert mode
	"autocmd InsertEnter * set cursorline
	"" turn off current line highlighting when leaving insert mode
	"autocmd InsertLeave * set cursorline
augroup END

"xnoremap Y :s/\%V.*\%V/\=system('echo ' . shellescape(submatch(0)) . ' \| xclip -sel clip')->trim()/
"mapping

" }
