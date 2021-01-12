" this is a comment
"set nocompatible
set encoding=UTF-8

syntax on " enable syntax highlighting

set number " shows line numbers on the left

set smartindent " help in proper indentation

set tabstop=4 " makes a tab space=4 default is 8

set incsearch " highlights the results on the go as you search. Try <Esc>/[search-text]

set showmatch " highlights matching braces

set relativenumber " shows relative number lines

set smartcase " search is case insensitive unless the search contains capital letters

set splitbelow " open the new vertical vim split in the bottom instead of above

set splitright " open the new horizontal vim split in the right instead of left

set hlsearch " highlights all found items for the search
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=white ctermfg=black

"KEY-BINDINGS--------------------------------------------------------
" <Ctrl>+f to lauch lex(vim's inbuilt file explorer)
map <C-f> :Lex <CR>

" <Shift>+f reduces the window size to 30. By default it takes half of the screen.
"I usually use it to reduce the size of the lex window.
map <S-f> :vertical resize 30 <CR>

"<Shift>+v to vertically split the vim window
map <S-v> :vsplit<CR>

"<Shift>+h to horizontally split the vim window
map <S-h> :split<CR>

"<Up> IN NORMAL MODE to increase split size vertically
nnoremap <Up> :resize +2<CR>

"<Down> IN NORMAL MODE to decrease split size vertically
nnoremap <Down> :resize -2<CR>

"<Left> IN NORMAL MODE to decrease split size horizontally
nnoremap <Left> :vertical resize -2<CR>

"<Right> IN NORMAL MODE to increase split size horizontally
nnoremap <Right> :vertical resize +2<CR>

"<Ctrl>+k to move to the lower split
nnoremap <C-K> <C-W><C-J>

"<Ctrl>+l to move to the upper split
nnoremap <C-L> <C-W><C-K>

"<Ctrl>+; to move to the right split
nnoremap <C-;> <C-W><C-L>
" but, I'm currently using <Ctrl>+P as <Ctrl>+; doesn't work
nnoremap <C-P> <C-W><C-L>

"<Ctrl>+j to move to the left split
nnoremap <C-J> <C-W><C-H>

" matches brackets automatically
inoremap { {}<Esc>i

" matches brackets and creates separate block automatically
inoremap {<ENTER> {<ENTER><ENTER>}<Esc>ki<Tab>

"automatically matches double quotes""
inoremap " ""<Esc>i

"automatically matches parentheses ()
inoremap ( ()<Esc>i

"automatically matches square brackets []
inoremap [ []<Esc>i

"remapping hjkl to jkl;
noremap j h
noremap k j
noremap l k
noremap ; l

"remapping <Esc> to jj
inoremap jj <Esc>

"remapping <Esc> to jk
inoremap jk <Esc>

