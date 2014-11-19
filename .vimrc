set number
set wildmenu
filetype plugin on
syntax on
set ttymouse=xterm2
set mouse=a
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
noremap  <C-right> :tabnext<CR>
noremap  <C-left>  :tabprevious<CR>
noremap  <C-d>     :tabclose<CR>
vmap <C-c> "*y
set tabstop=4 
set shiftwidth=4
set smarttab 
set ignorecase
set autoindent
set ruler
set wildmode=list:longest

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
  else
      return "\<Tab>"
  endif
  endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"
:au CursorHold * checktime
:set autoread

nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a
set pastetoggle=<F2>
