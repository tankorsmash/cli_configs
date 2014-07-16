filetype off

"
"     surrounds a TraceLine with a Verbose check
"     '<,'>g/TraceLine/-1s/^.*$/&\rif (verbose){/ | +2s/^.*$/}\r&/
"
"
" set the starting path
"cd c:\Users\Mark\Documents\Visual\ Studio\ 2008\Projects\

"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
set nocompatible
" changes it so the mouse starts Visual mode not Select mode
set selectmode="key"
" make i_^y do what it is supposed to do
inoremap <c-Y> <c-Y>
" make Y act similar to D or C in that it yanks to end of line
noremap Y y$

"python-mode stuff
let g:pymode_lint_write = 0

set incsearch


map  :update




"My Custom vimrc stuff
"
"PLugins I've got so far: tcomment, NerdTree, colorschemes from vim.org
" Pathogen, autocorrect, sparkup, vim-taglist, ctags, surround, matching
"
"retab
"
set relativenumber

let g:sparkupNextMapping = '<Leader><c-i>'

set tags=./tags;/

set autoread
set ignorecase
set smartcase
set infercase
set gdefault
" set nohlsearch
set hlsearch
set visualbell

set lazyredraw


set nowrap

"gui stuff, last one is the default
set guioptions=ac
" set guioptions=egmrLtT

"set thesaurus+=C:\Users\Mark\Documents\Thesaurus\mthesaur.txt

" filetype plugin indent on
filetype plugin on
filetype indent on

set cursorline

" set expandtab
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set smartindent
set autoindent
" set textwidth=80

" allow editing virtual space only in blocks
set virtualedit=block

"draws the line on the textwidth line
set colorcolumn=+1

" Allows for undo history after close
set undofile

"history edits
set history=10000
set undolevels=10000

"ignores certain files for tab completion
set wildignore=*.swp,*.png,*.cd,*.ico,*.jpg,*.ico,*.cs~,*.txt~,*.py~
"
" Allows for having files offscreen without saving first
set hidden

" allows for crazy tab menu
set wildmenu

" font size
" set guifont=:h20
"set guifont=Consolas:h14
" set guifont=ProggyClean\ 12
set guifont=Monospace\ 14
" set guifont="Consolas for Powerline/CONSOLAS-Powerline":h15
colorscheme vividchalk
colorscheme Monokai
colorscheme molokai


let g:buftabs_only_basename=1

" " " "pathogen "  "  " 
call pathogen#infect()
call pathogen#helptags()

" " " " Taglist variables "  "  "  

"let Tlist_Ctags_Cmd = shellescape('E:\Program Files (x86)\Vim\ctags\ctags58\ctags.exe')

" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
" nnoremap TT :TlistToggle<CR>
" map <F4> :TlistToggle<CR>
nnoremap TT :TagbarToggle<CR>
map <F4> :TagbarToggle<CR>

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_autoshowtag = 1
let g:tagbar_autoclose = 1
let g:tagbar_foldlevel = 0

" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_WinWidth = 40


" NERDtree stuff
let NERDTreeIgnore=['\.jpg$','\.png$','\.ico$','\.csproj$',    '\.user$', '\.cachefile$','\.cd$','\.jpeg$',   '\.pyc$', '\~$']
noremap <f3> :NERDTreeToggle<cr>

" MRU plugin
let MRU_Max_Entries = 10000
let MRU_Exclude_Files = '.*fugitiveblame.*' 

"full screen
" map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
"map <F11> :simalt ~x<cr>

"hard mode for insert mode
inoremap <Esc> <Nop>
inoremap <Backspace> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <c-b> <Del>

inoremap <c-c> <Esc>
vnoremap <c-c> <Esc>
nnoremap <c-c> <Esc>


"change leader key
let mapleader = " "

"map keys for next and prev buffer
noremap <Leader>n :bn
noremap <Leader>p :bp

noremap <Leader>dh :e ~/diet/highday.txt
noremap <Leader>dd :e ~/diet/diet.txt

" noremap <Leader>c :lcd %:p:h
noremap <Leader>l :ls

"map keys for running current file in Python
noremap <Leader>z :!python %
noremap <Leader>c :e $MYVIMRC
noremap <Leader>a :MRU

"make it so ,s and ,S enable or disable smart indent
noremap <Leader>s :set nosmartindent<cr>
noremap <Leader>S :set smartindent<cr>

noremap <Leader>x :!ctags %<cr><cr>

noremap <Leader>l :ls<cr>
noremap <Leader>ti :e ~/chideit/apps/chide/products/reviewroom/tests/__init__.py<cr>
noremap <Leader>tc :tabc<cr>
noremap <Leader>te :tabe<cr>
noremap <Leader>to :tabo<cr>

"map <Leader>pd :norm ,kgg/USE_DEBUG_TOOL/egcc
noremap <Leader>dl :e ~/reviewroom/log/debug.log
map <Leader>dd  :e/home/joshb/chideit/reviewroom/project/settings/local.pygg/USE_DEBUG_TOOLgcc/<Up>

" fugitive stuff
nnoremap <Leader>gs :Gstatus
nnoremap <Leader>gb :Gblame

" filetypes
nnoremap <Leader>fh :set filetype=html
nnoremap <Leader>fj :set filetype=javascript
nnoremap <Leader>fp :set filetype=python
nnoremap <Leader>fx :set filetype=xml
nnoremap <Leader>ff :set filetype=

" commonly edited files
map <Leader>k :e /home/joshb/chideit/reviewroom/project/settings/local.py
map <Leader>si :e /home/joshb/chideit/reviewroom/project/settings/__init__.py
map <Leader>j :e /home/joshb/misc/vim/macros.vim

" override windows redo, back to scroll up.
noremap <c-y> <c-y>

" map f8 to edit vimrc, but removed because I don't like the F keys
" noremap <F8> :e $myvimrc\
" noremap <F6> :MRU\

" noremap <F7> :!python %\


"makes the cmdline 2 lines high. need to do this for the sake of avoiding
" \"PRESS ENTER TO CONTINUE"
set cmdheight=2

" 3 lines of margin before the screen scrolls, default 0
set scrolloff=3


" sets spell on if it's a .txt file
au BufNewFile,BufRead *.txt set spell  
" sets the cwd to current directory
autocmd BufEnter * silent! lcd %:p:h

"end custom

" set diffexpr=MyDiff()
" function MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg2 = v:fname_new
"   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"   let arg3 = v:fname_out
"   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"   let eq = ''
"   if $VIMRUNTIME =~ ' '
"     if &sh =~ '\<cmd'
"       let cmd = '""' . $VIMRUNTIME . '\diff"'
"       let eq = '"'
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction

"here is a more exotic version of my original Kwbd script
"delete the buffer; keep windows; create a scratch buffer if no buffers left
function s:Kwbd(kwbdStage)
  if(a:kwbdStage == 1)
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
      else
        enew
        let l:newBuf = bufnr("%")
        windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
      endif
      execute s:kwbdWinNum . 'wincmd w'
    endif
    if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
      execute "bd! " . s:kwbdBufNum
    endif
    if(!s:buflistedLeft)
      set buflisted
      set bufhidden=delete
      set buftype=
      setlocal noswapfile
    endif
  else
    if(bufnr("%") == s:kwbdBufNum)
      let prevbufvar = bufnr("#")
      if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
        b #
      else
        bn
      endif
    endif
  endif
endfunction

command! Kwbd call s:Kwbd(1)
nnoremap <silent> <Plug>Kwbd :<C-u>Kwbd<CR>

" Create a mapping (e.g. in your .vimrc) like this:
nmap <f2> <Plug>Kwbd


if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=60 columns=165
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

let g:cssColorVimDoNotMessMyUpdatetime = 1

"powerline stuff
set laststatus=2
set encoding=utf-8 " Necessary to show Unicode glyphs
" let g:Powerline_symbols = 'compatible'
let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'

" Overriding symbols
" let g:Powerline_symbols_override = {
"     \   'BRANCH': [0x2b60]
"     \ , 'RO'    : [0x2b64]
"     \ , 'FT'    : [0x2b62, 0x2b63]
"     \ , 'LINE'  : [0x2b61]
" \}
" Overriding dividers
" let g:Powerline_dividers_override = ['', [0x2b81], '', [0x2b83]]


" custom build files for Orchid
" let &makeprg='"C:\Users\Mark\Documents\Visual Studio 2010\Projects\Orchid\Orchid\Orchid\build.bat"'
set errorformat=\ %#%f(%l\\\,%c):\ %m

" for switching case of text in visual mode
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ ygv"=TwiddleCase(@")<CR>Pgv



" go fullscreen
"simalt ~x<cr>
"au GUIEnter * simalt ~x

" python-mode stuff
let g:pymode_doc_key = '<Leader><Leader>a'
let g:pymode_folding = 0
let g:pymode_utils_whitespaces = 0

" ctrlP stuff
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_lazy_update = 200 "350 0
" let g:ctrlp_user_command = "ack -f %s"
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_custom_ignore = ".*.pyc$"
let g:ctrlp_max_files = 100000

set noexpandtab

cd ~/chideit/

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                   \ exe "normal g'\"" | endif


" go to defn of tag under the cursor | makes go to tagging CaseSensitive
fun! MatchCaseTag()
    let ic = &ic
    set noic
    try
        exe 'tjump ' . expand('<cword>')
    finally
       let &ic = ic
    endtry
endfun
nnoremap <silent> <c-]> :call MatchCaseTag()<CR>



"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
"                            \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

let g:ctrlp_extensions = ['tag']
set showcmd

" set foldlevel=20

let g:ctrlp_custom_ignore = ".*\/c\/.*"

autocmd FileType python set omnifunc=pythoncomplete#Complete

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

let g:calendar_google_calendar = 1

"open docx as zip
au BufReadCmd *.jar,*.xpi,*.docx call zip#Browse(expand("<amatch>"))

set timeoutlen=3000
set guifont=Monospace\ 15

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
inoremap  

nnoremap K :echo "K was disabled"

abbreviate getbyid objects.get(id=
abbreviate getbyfilter objects.filter(

set nostartofline

nnoremap <Leader>js :call JsBeautify()
vnoremap <Leader>js :call RangeJsBeautify()

let g:multi_cursor_quit_key='<C-c>'
