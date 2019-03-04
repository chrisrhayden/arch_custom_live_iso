let mapleader = "\<space>"

" ~/.config/nvim/settings.vim
""""""""""""""""""""""""""""""""""""""""
" config {{{
""""""""""""""""""""""""""""""""""""""""

" behavior {{{
""""""""""""""""""""""""""""""""""""""""
" the // at the end makes vim use unique / full path backups
set backupdir=~/tmp/vim//,/tmp//,/var/tmp//
" set the swap directory, idk why its just directory
set directory=~/tmp/vim//,/tmp//,/var/tmp//
" where to add personal words from zg and zw
" set spellfile=~/.config/nvim/spell/code-en.utf-8.add
" <C-x><C-t>
" set thesaurus=~/.config/nvim/spell/en_thesaurus.txt
" redraw only when the user changes the screen
set lazyredraw
" show all off-screen changes in a split
if has('nvim')
  set inccommand=split
endif
" save these settings when making views
set viewoptions=folds,cursor
" sesdir: the session file becomes the current dir
set sessionoptions=buffers,folds,help,tabpages,winsize,sesdir
" disallow certain vim functions from being run in non standard vimrc's
set secure

" }}}

" feel / editing {{{
""""""""""""""""""""""""""""""""""""""""
" insert spaces instead of a tab
set expandtab
" spaces tab counts for when editing, if expandtab is set vim will use the
" appropriate amount of spaces, with out any tabs
set softtabstop=4
" what auto indent uses i.g. >>
set shiftwidth=4
" minimum lines to keep above and below the cursor
set scrolloff=2
" turn on spell checking
set spell

" incrementally show search
set incsearch
" set path+=**
" }}}

" ui / look {{{
""""""""""""""""""""""""""""""""""""""""
" visually break lines at what ever break at is instead of the last fitting character
set linebreak
" highlight current line
set cursorline
" highlight column 80 and 100
set colorcolumn=81,101
" the status line conf
set statusline=%n\ %t\ %m\ %r\ \%=\ %y\ \ [%l/%L]\ %P
" set default directions for splits
set splitbelow
set splitright
" fold based on indent level
set foldmethod=indent
" what level to start folds, all closed 0, all open 99
set foldlevelstart=99
" nested fold max
set foldnestmax=5
" set the height for current windows
set winheight=35
" turn on list mode
set list
" show the characters following the : in list mode
set listchars=tab:>-,trail:·,extends:>,precedes:<,nbsp:+
" conceal and switch characters
" set conceallevel=1
" }}}

" color scheme {{{
""""""""""""""""""""""""""""""""""""""""
" set colors to be very close to gui vim
" set termguicolors
colorscheme elflord
" }}}

" }}}

" ~/.config/nvim/mappings.vim
""""""""""""""""""""""""""""""""""""""""

" form vim-better-default {{{
""""""""""""""""""""""""""""""""""""""""
" misc {{{

" Quit normal mode
nnoremap <silent> <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>
nnoremap ZA  :qa!<CR>

" Yank to the end of line, I think this in unused ??? holy shit
nnoremap Y y$

" Open shell in vim
if has('nvim') || has('terminal')
  map <Leader>' :terminal<CR>
else
  map <Leader>' :shell<CR>
endif

" tab {{{

map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>
nnoremap <Leader>tp  :tabprevious <CR>
nnoremap <Leader>tn  :tabnext <CR>
nnoremap <Leader>tN  :tabnew <CR>

" }}}

" }}}

" Buffer buffer  {{{

" to consider
" \ 'b' : ['Buffers'   , 'fzf-buffer']      ,
" \ '?' : ['Buffers'   , 'fzf-buffer']      ,
" \ 'h' : ['Startify'  , 'home-buffer']     ,

nnoremap <Leader>b1 :buffer 1<CR>
nnoremap <Leader>b2 :buffer 2<CR>
nnoremap <Leader>b3 :buffer 3<CR>
nnoremap <Leader>b4 :buffer 4<CR>
nnoremap <Leader>b5 :buffer 5<CR>
nnoremap <Leader>b6 :buffer 6<CR>
nnoremap <Leader>b7 :buffer 7<CR>
nnoremap <Leader>b8 :buffer 8<CR>
nnoremap <Leader>b9 :buffer 9<CR>

nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bf :bfirst<CR>
nnoremap <Leader>bk :bw<CR>
nnoremap <Leader>bl :blast<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
" }}}

" files {{{

nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fp :echo expand('%')<cr>
nnoremap <Leader>fu :update<CR>

noremap <leader>ft :edit %:h/test.%:e<cr>
noremap <leader>fs :edit %:h/scrap<cr>
" }}}

" Fold {{{
" these are ignored below
nnoremap <Leader>f0 :set foldlevel=0<CR>
nnoremap <Leader>f1 :set foldlevel=1<CR>
nnoremap <Leader>f2 :set foldlevel=2<CR>
nnoremap <Leader>f3 :set foldlevel=3<CR>
nnoremap <Leader>f4 :set foldlevel=4<CR>
nnoremap <Leader>f5 :set foldlevel=5<CR>
nnoremap <Leader>f6 :set foldlevel=6<CR>
nnoremap <Leader>f7 :set foldlevel=7<CR>
nnoremap <Leader>f8 :set foldlevel=8<CR>
nnoremap <Leader>f9 :set foldlevel=9<CR>
" }}}

" Window {{{


nnoremap <Leader>wr <C-W>r
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wq <C-W>q

nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wl <C-W>l

nnoremap <Leader>wH <C-W>5<
nnoremap <Leader>wL <C-W>5>
nnoremap <Leader>wJ :resize +5<CR>
nnoremap <Leader>wK :resize -5<CR>

nnoremap <Leader>w= <C-W>=
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>w\| <C-W>v
nnoremap <Leader>w2 <C-W>v
nnoremap <Leader>wv <C-W>v
" }}}

" i guess i could try {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""
" jj | escaping
" inoremap jj <Esc>
" cnoremap jj <C-c>
" Quit visual mode
" vnoremap v <Esc>
" Quick command mode
" nnoremap <CR> :
" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
" autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" File save
" }}}

" }}}

" from others {{{
""""""""""""""""""""""""""""""""""""""""
" readline / emacs {{{
" from https://github.com/tpope/vim-rsi
inoremap        <C-A> <C-O>^
inoremap   <C-X><C-A> <C-A>
cnoremap        <C-A> <Home>
cnoremap   <C-X><C-A> <C-A>

" inoremap <expr> <C-B> \
" getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<Lt>C-D>\<Lt>Esc>kJs":"\<Lt>Left>"
" cnoremap        <C-B> <Left>

inoremap <expr> <C-D> col('.')>strlen(getline('.'))?"\<Lt>C-D>":"\<Lt>Del>"
cnoremap <expr> <C-D> getcmdpos()>strlen(getcmdline())?"\<Lt>C-D>":"\<Lt>Del>"

inoremap <expr> <C-E> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<Lt>C-E>":"\<Lt>End>"

inoremap <expr> <C-F> col('.')>strlen(getline('.'))?"\<Lt>C-F>":"\<Lt>Right>"
cnoremap <expr> <C-F> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"

function! s:transpose() abort
  let pos = getcmdpos()
  if getcmdtype() =~# '[?/]'
    return "\<C-T>"
  elseif pos > strlen(getcmdline())
    let pre = "\<Left>"
    let pos -= 1
  elseif pos <= 1
    let pre = "\<Right>"
    let pos += 1
  else
    let pre = ""
  endif
  return pre . "\<BS>\<Right>".matchstr(getcmdline()[0 : pos-2], '.$')
endfunction

cnoremap <expr> <C-T> <SID>transpose()

noremap! <M-b> <S-Left>
noremap! <M-d> <C-O>dw
cnoremap <M-d> <S-Right><C-W>
noremap! <M-BS> <C-W>
noremap! <M-f> <S-Right>
noremap! <M-n> <Down>
noremap! <M-p> <Up>

" }}}

" }}}

" my mappings and commands {{{
""""""""""""""""""""""""""""""""""""""""
" abbreviations {{{
iabbrev msg message

iabbrev objs objects

iabbrev obj object

iabbrev mesg message

iabbrev creat crate

iabbrev clieant client

iabbrev ting thing

iabbrev tets test

" project or language specific
iabbrev uwrid urwid

" }}}

" commands {{{

function! Preserve(command)
  " http://vimcasts.org/episodes/tidying-whitespace/
  " Preparation: save last search, and cursor position.
  " @/ = from the registry named /
  let save_hist=@/


  let save_line = line(".")
  let save_column = col(".")
  " Do the business:
  "
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=save_hist
  call cursor(save_line, save_column)
endfunction

command CTags !ctags -R .
" command ClearWhitespace :%s/\s\+$//e
command ClearWhitespace :call Preserve('%s/\s\+$//e')
" command ClearViews :!rm $HOME/.local/share/nvim/view/*
command W :w
command Q :q

" }}}
" pdb {{{

nnoremap <leader>pp Oimport pdb; pdb.set_trace()  # noqa<Esc>:w<CR>
nnoremap <leader>pi Oimport ipdb; ipdb.set_trace()  # noqa<Esc>:w<CR>
nnoremap <leader>pq O# pylint: disable=
" }}}

" windows buffers {{{

" movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" for anything
nnoremap <leader>cc :close<CR>

" for local window
nnoremap <leader>lc :lclose<CR>
nnoremap <leader>lo :lopen<CR>

" list buffers
nnoremap <leader>ls :ls<CR>
" switch buffer
nnoremap <bs> <C-^>
" keep space on end
nnoremap <leader>bb :b 

" for scratch window
" nnoremap <leader>sc :pclose<CR>
" }}}

" make {{{
" nnoremap <leader>mk :make!<CR>
nnoremap <leader>ma :make!
nnoremap <leader>mf :make! %<CR>
" }}}
"
" git fugitive {{{
nnoremap <space>gs :Gstatus<cr>
nnoremap <space>gc :Gcommit
nnoremap <space>gf :Gcommit %<cr>
nnoremap <space>gw :Gwrite<cr>
nnoremap <space>gq :Gwq<cr>
" }}}

" vimdiff {{{
nnoremap <leader>dr :diffget RE<cr>
nnoremap <leader>db :diffget BA<cr>
nnoremap <leader>dl :diffget LO<cr>
" }}}

" misc {{{
map <Help> <nop>
map <F1> <Esc>
imap <F1> <Esc>

" disable Arrow keys / set to none I guess
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>
" disable EX mode, as I'm a pleb
nnoremap Q <nop>

" Hide the mouse cursor while typing
set mousehide
" make ecs escape terminal
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>fT :execute 'edit ' . getcwd() . '/misc_test.' . expand('%:e')

" turn off search highlight
nnoremap <leader>h :nohlsearch<CR>

" the `` at the end moves the cursor to the stored position,
" thats now done in the function
nnoremap <leader>cw :ClearWhitespace<CR>:nohlsearch<CR>

" reformat the whole file
nnoremap <leader>= gg=G``

" yank whole file
nnoremap <leader>yf gg"+yG``
nnoremap <leader>yl "+YY

" select the last thing entered, sometimes
nnoremap <leader>vv `[v`]

" enter a time stamp
nnoremap <leader>da :put =strftime('%F')<CR>A

" }}}

" ignore keys {{{
" this needs to be the last thing more or less
" }}}

" dead code {{{
" Search result highlight countermand
" nnoremap <Leader>sc :nohlsearch<CR>
" Toggle pastemode
" TODO: remap this
" nnoremap <Leader>tp :setlocal paste!<CR>


" bash like {{{
" C-j moves the current line down one
" inoremap <C-j> <Down>
" Insert mode shortcut
" inoremap <C-h> <BS> idk why this was added
" inoremap <C-k> <Up>
" Bash like
" inoremap <C-b> <Left>
" inoremap <C-f> <Right>
" inoremap <C-a> <Home>
" inoremap <C-e> <End>
" inoremap <C-d> <Delete>
" Command mode shortcut
" cnoremap <C-h> <BS>
" cnoremap <C-j> <Down>
" cnoremap <C-k> <Up>
" cnoremap <C-b> <Left>
" cnoremap <C-f> <Right>
" cnoremap <C-a> <Home>
" cnoremap <C-e> <End>
" cnoremap <C-d> <Delete>
" }}}
" }}}
"
" }}}


