filetype off
set nocompatible

" loads plugins inside, so I can just re-source this file
source ~/.vim/plugins_to_load.vim

" changes it so the mouse starts Visual mode not Select mode
set selectmode="key"
" make i_^y do what it is supposed to do
inoremap <c-Y> <c-Y>
" make Y act similar to D or C in that it yanks to end of line
noremap Y y$


set synmaxcol=300

"python-mode stuff
let g:pymode_lint_write = 0
let g:pymode_lint_on_write = 0
let g:pymode_python = 'python3'
let g:pymode_run_bind = '<leader>q'

"Indent after an open paren: >
let g:pyindent_open_paren = '&sw'
"Indent after a nested paren: >
let g:pyindent_nested_paren = '&sw'
"Indent for a continuation line: >
let g:pyindent_continue = '&sw'

set incsearch


nnoremap <c-s> :w<cr>

set relativenumber
set number

let g:sparkupNextMapping = '<Leader><c-i>'

set tags=./tags;/

set autoread
set ignorecase
set smartcase
set noinfercase "default off im pretty sure
set gdefault
set hlsearch
set visualbell

set lazyredraw


set nowrap

"gui stuff
set guioptions=c "dont use gui dialogs for messages, use normal interface
" set guioptions=egmrLtT "default

filetype plugin on
filetype indent on
syntax on

set cursorline

set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
" set guifont=Monospace\ 14 "dont have this on windows yet
"set guifont=Inconsolata\ for\ Powerline\ 18
" set guifont=DejaVu_Sans_Mono_for_Powerline:h14:cANSI:qDRAFT
" set guifont=Anonymice_Powerline:h16:cANSI:qDRAFT
set guifont=Droid_Sans_Mono_Slashed_for_Pow:h14:cANSI:qDRAFT



" if has("gui_running")
	" colorscheme Monokai
" else
colorscheme molokai
" endif


let g:buftabs_only_basename=1


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

" don't open help with F1
nmap <F1> :echo "F1 to see help disabled in my vimrc"<CR>

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
let NERDTreeIgnore=['\.jpg$','\.png$','\.ico$','\.csproj$', '\.user$', '\.cachefile$','\.cd$','\.jpeg$',   '\.pyc$', '\~$']
noremap <f3> :NERDTreeToggle<cr>
noremap <S-f3> :NERDTreeToggle %:p<cr>

" MRU plugin
let MRU_Max_Entries = 10000
let MRU_Exclude_Files = '.*fugitiveblame.*'

"hard mode for insert mode
" inoremap <Backspace> <Nop> "tryna make a change
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <c-b> <Del>
"no newline with ctrl-m in insert mode, but can't because it's an exact(?) equivalent to <CR>
" inoremap <c-m> <Nop>

inoremap <c-C> <Esc>
vnoremap <c-C> <Esc>
nnoremap <c-C> <Esc>
" i hated this
" inoremap jk <Esc>


"change leader key
let mapleader = " "

"map keys for next and prev buffer
noremap <Leader>n :bn<cr>
noremap <Leader>p :bp<cr>

" noremap <Leader>c :lcd %:p:h
noremap <Leader>l :ls<cr>

"map keys for running current file in Python
" noremap <Leader>z :!python3 %<cr>
noremap <Leader>z :AsyncStop \| sleep 50ms \| AsyncRun python3 %<cr>
noremap <Leader>x :AsyncStop<cr>
" noremap <Leader><Leader>z :!ipython3 %<cr>
noremap <Leader><Leader>z :AsyncStop \| sleep 250ms \| AsyncRun ipython3 %<cr>
noremap <Leader><Leader>c :Dispatch! ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=Classes/steam_sdk* --exclude=Classes/reader* --exclude=Classes/magic_particles Classes/*<CR>

noremap <Leader><Leader>a :AsyncStop \| sleep 250ms \| AsyncRun ipython3 C:\Users\Josh\Documents\cocos_projects\magnolia\gui_magnolia.py<cr>
noremap <Leader><Leader>q :AsyncStop \| sleep 250ms \| AsyncRun ipython3 C:\Users\Josh\Documents\cocos_projects\magnolia\magnolia.py<cr>
noremap <Leader><Leader>t :AsyncStop \| sleep 250ms \| AsyncRun ipython3 C:\Users\Josh\Documents\cocos_projects\magnolia\test_magnolia.py<cr>
let g:asyncrun_open = 8

noremap <Leader>c :e $MYVIMRC<cr>
noremap <Leader>C :e ~/.vim/plugins_to_load.vim<cr>
noremap <Leader>a :CtrlPMRUFiles<cr>
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" noremap <Leader>a :MRU<cr>

nnoremap <Leader>v :norm mmggVG"+y<CR>`m

noremap <Leader>l :ls<cr>
noremap <Leader>tc :tabc<cr>
noremap <Leader>te :tabe<cr>
noremap <Leader>to :tabo<cr>

nnoremap <silent> <Leader>w :Make<cr>
nnoremap <silent> <Leader>r :Copen<cr>

" fugitive stuff
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gac :Gcommit -am "
nnoremap <Leader>gc :Gcommit -m "
nnoremap <Leader>gw :silent Git add %<CR>

" filetypes
nnoremap <Leader>ffh :set filetype=html<cr>
nnoremap <Leader>ffj :set filetype=javascript<cr>
nnoremap <Leader>ffp :set filetype=python<cr>
nnoremap <Leader>ffx :set filetype=xml<cr>
nnoremap <Leader>fff :set filetype=<cr>
nnoremap <Leader>ffc :set filetype=cpp<cr>

" nnoremap <Leader>x :% !xmllint.exe "%" --format
" nnoremap <Leader>x :% !xmllint.exe "%" --format

"vim-ripgrep setup
let g:rg_binary = 'C:/tools/rg.exe'
let g:rg_highlight = 1
let g:rg_derive_root = 1
let g:rg_highlight_type = 'identifier'

nnoremap <Leader>s :Ack!<Space>
" nnoremap <Leader>sw :Ack! <C-R><C-W> Classes/<Space>
" nnoremap <Leader>sw :Ack -Gmagnolia.*js -i  <C-R><C-W>
" nnoremap <Leader>sw :Ack -Gmagnolia -i  <C-R><C-W>
nnoremap <Leader>sw :Ack <C-R><C-W>
let g:ackprg = 'ag --vimgrep --smart-case'
" let g:ackprg = 'rg --vimgrep --smart-case' "idk why !rg can't be found, while rg can in cmd
" let g:ackprg = 'C:/tools/rg' " wouldnt work in system32, so i moved it
" cnoreabbrev ag Ack
" cnoreabbrev aG Ack
" cnoreabbrev Ag Ack
" cnoreabbrev AG Ack
" let g:ag_working_path_mode="r"

" add template paths for gf completing
" set path+=~/chideit/apps/chide/products/smapply/templates/

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
" set scrolloff=3
let g:scrolloff_fraction = 0.10


" sets spell on if it's a .txt file
" au BufNewFile,BufRead *.txt set spell


" sets the cwd to current directory
" autocmd BufEnter * silent! lcd %:p:h

"end custom


"here is a more exotic version of [someone elses] original Kwbd script
"delete the buffer; keep windows; create a scratch buffer if no buffers left
function! s:Kwbd(kwbdStage)
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


" " I dont see the point in any of this
if has("gui_running")
	" GUI is running or is about to start.
	" Maximize gvim window.
	set lines=60 columns=165
else
	" " This is console Vim.
	" if exists("+lines")
	" 	set lines=50
	" endif
	" if exists("+columns")
	" 	set columns=100
	" endif
endif

let g:cssColorVimDoNotMessMyUpdatetime = 1

"powerline stuff
set laststatus=2
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'


" air-line
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
set noshowmode "lightline shows it anyway


let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Just filename in the tabline
" let g:airline#extensions#tabline#fnamemod = ':t'

" Easier tab/buffer switching
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

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


" ctrlP stuff
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_lazy_update = 0 "200 350 0
" let g:ctrlp_user_command = "ack --ignore-dir=raw --ignore-dir=cocos2d -f %s"
let g:ctrlp_max_files = 1000000
let g:ctrlp_max_history = 1000000
let g:ctrlp_mruf_max = 25000
let g:ctrlp_mruf_default_order = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_switch_buffer = '' "disable switching
let g:ctrlp_clear_cache_on_exit = 0

let g:ctrlp_user_command = 'ag -l --ignore-dir=cocos2d* --nocolor -g "" %s'
let g:ctrlp_prompt_mappings = {
            \ 'ToggleFocus()':        ['<c-space>'],
            \ }

nnoremap <C-\> :CtrlPBuffer<CR>
nnoremap <Leader>p :CtrlPCurWD<CR>
" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'} " this doesnt work on  new install for some reason, returns 0


set noexpandtab

" if has("win32")
"     cd ~\Documents\cocos_projects\magnolia_cocos\
" else
"     cd ~/Documents/cocos_projects/basebuilder/
" endif

" returns to last position in file. pretty sure this was messing with my
"  positions though, so I'm disabling it
" au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
" 			\ exe "normal g'\"" | endif


" " go to defn of tag under the cursor | makes go to tagging CaseSensitive
" fun! MatchCaseTag()
" 	let ic = &ic
" 	set noic
" 	try
" 		exe 'tjump ' . expand('<cword>')
" 	finally
" 		let &ic = ic
" 	endtry
" endfun
" nnoremap <silent> <c-]> :call MatchCaseTag()<CR>



"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
"                            \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

let g:ctrlp_extensions = ['tag']
set showcmd

let g:ctrlp_custom_ignore = ".*\/c\/.*\|.*.pyc$\|.*boost.*\|.*fsmobile.*$"

" Allow saving of files as sudo when I forgot to start vim using sudo. doesn't work in windows though
" cmap w!! w !sudo tee > /dev/null %<cr>

"open docx as zip
au BufReadCmd *.jar,*.xpi,*.docx,*.doc call zip#Browse(expand("<amatch>"))

" time delay before a key is decided to be the last one, default 1000, then I
" had it set to 1500 for some reason
set timeoutlen=500

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

nnoremap K :echo "K was disabled"<cr>

abbreviate gbi objects.get(id=
abbreviate gbf objects.filter(

set nostartofline

nnoremap <Leader>js :call JsBeautify()<cr>
vnoremap <Leader>js :call RangeJsBeautify()<cr>

nnoremap <Leader>gt :GundoToggle<cr>

let g:multi_cursor_quit_key='<C-c>'

nnoremap <Leader>qo :copen5<cr>
nnoremap <Leader>qc :cclose<cr>

set mouse=

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

let g:ftplugin_sql_omni_key = '<C-\>'



" search current word with :Ag!
" nnoremap <Leader><Leader>a :Ag! <c-r><c-w><CR>

" setting toggles
nnoremap <Leader><Leader>sl :set list!<CR>
nnoremap <Leader><Leader>se :set expandtab!<CR>

set expandtab


"HardTime
" noremap <Leader>ht :HardTimeToggle<CR>
let g:hardtime_default_on = 0 "default 1 to be on, i disabled it though
let g:hardtime_ignore_buffer_patterns = ["NERD.*"]
let g:hardtime_ignore_quickfix = 1
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 2
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*", "Help.*" ]
autocmd FileType Help :HardTimeOff


" " fzf
" set rtp+=~/.fzf
"
" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
" "
" " Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)
" "
" " " Advanced customization using autoload functions
" " inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"
" " FZF with gitignore respecting
" nnoremap <leader>gp :GFiles --cached --others --exclude-standard<CR>
"
" "disable preview, since windows doesnt have preview.sh support
" let g:fzf_preview_window = ''

" sweet django debugging prints
" import time; from inspect import currentframe, getframeinfo; from django.db import connection; _START_TIME = time.time();_TOTAL_TIME = 0; _TOTAL_QUERIES = len(connection.queries); _LAST_TIME = [time.time()]; _LAST_QUERIES = [0]
" def DEBUGDEBUG(msg=None): frameinfo = getframeinfo(currentframe(1)); _now = time.time(); delta_time = _now - _LAST_TIME[0]; _TOTAL_TIME = _now - _START_TIME; _LAST_TIME[0] = _now; delta_queries = len(connection.queries) - _LAST_QUERIES[0]; _LAST_QUERIES[0] = len(connection.queries); print "LINE:", frameinfo.lineno, "QUERIES: %04d" % len(connection.queries), "DELTA QUERIES %04d" % delta_queries, "DELTA TIME:", "%03f" %delta_time, "TOTAL TIME: %03f" % _TOTAL_TIME, "## %s" % msg if msg else ""
" DEBUGDEBUG("start")

" rainbow parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'separately': {
\		'vimwiki': 0,
\	}
\}

" SexyScroller
" let g:SexyScroller_ScrollTime = 1
" let g:SexyScroller_MaxTime = 50

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

nnoremap <Space>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
set backspace=indent,eol,start

" set formatoptions-=o
" set formatoptions-=c
" don't auto comment new lines automatically
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro

" add jsx for leagion
set path+=assets\js\
set path+=assets\Resources\
let g:jsx_ext_required = 0

let g:python_recommended_style=0

" run leagion tests
nnoremap <Leader>tt :!python3 C:\Users\Josh\Documents\cocos_projects\leagion\manage.py test leagion.tests<CR>

" basebuilder specifics
" set makeprg=msbuild\ /nologo\ /v:q\ /t:buildupthebase\ proj.win32/buildupthebase.sln
" set makeprg=msbuild\ /nologo\ /v:q\ /t:roguebreaker_proj\ proj.win32/roguebreaker_sln.sln



" set filetype for cocos2d cocos studio files
au BufRead,BufNewFile *.csd set filetype=xml

abbr dyca dynamic_cast
abbr stca static_cast

" cpp syntax
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
" let g:cpp_concepts_highlight = 1


" vim-surround
let g:surround_no_insert_mappings = 1

" set shellslash " not sure what I needed this for

" let g:syntastic_kotlin_checkers = ['kotlinc']
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" mucomplete
" set completeopt+=menuone
" inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
" inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
" inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
" set completeopt+=noselect
" set completeopt+=noinsert

let g:scroll_off_fraction = 0.15

" close quickfix with q after returning to last window
autocmd BufWinEnter quickfix nnoremap <silent> <buffer> q <C-W><C-P>:cclose<cr>:lclose<cr>

" disable backups because it only seems to be causing problems
set backupdir=~/.vim/backups
set nobackup
set nowritebackup

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:csv_table_leftalign=1

let g:vim_json_syntax_conceal = 0

source ~/.vimrc_functions
"change to magnolia cocos when vim boots without drawing messagebox
autocmd VimEnter * call MAGNOLIA_COCOS()
" set pythondll=C:/Python27/python.dll
" set pythonthreedll=C:/Users/Josh/AppData/Local/Programs/Python/Python36-32/python36.dll


" default vimwiki mapping prefix
let g:vimwiki_map_prefix = '<Leader><Leader>w'
let g:vimwiki_list = [{
    \'path': '~/.vim/vimwiki/',
    \'syntax': 'markdown',
    \'ext': '.md',
    \'auto_diary_index': 1
\}]
" let g:vimwiki_folding='list' "enable folding in vimwiki

nmap <Leader><Leader>n :VimwikiDiaryNextDay<cr>
nmap <Leader><Leader>p :VimwikiDiaryPrevDay<cr>

" make Rooter stop changing cwd automatically
" let g:rooter_manual_only = 1

" cursors in terminal mode (i think)
" let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
" let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
" let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END


" disable g< and g> for TComment because I don't want to mess with them, ZXC
" is just a keystroke I can't imagine needing, so it works as a throwaway
let g:tcomment_mapleader_uncomment_anyway= 'ZXC'
let g:tcomment_mapleader_comment_anyway = 'ZXC'

" remap :Q to :q
command! Q :q


"haskell-vim plugin configure
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
