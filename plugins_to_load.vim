call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/stefandtw/quickfix-reflector.vim'
Plug 'https://github.com/takac/vim-hardtime.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/nixprime/cpsm.git'
" Plug 'https://github.com/tmhedberg/matchit.git' "replaced with matchup
" Plug 'https://github.com/andymass/vim-matchup'
Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'https://github.com/jremmen/vim-ripgrep'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/wellle/targets.vim'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tomtom/tcomment_vim.git'
" Plug 'https://github.com/terryma/vim-multiple-cursors.git' "i love it but its too buggy
Plug 'https://github.com/majutsushi/tagbar.git'

" Plug 'https://github.com/tpope/vim-fugitive.git', { 'tag': 'v2.4' }
" Plug 'https://github.com/tpope/vim-fugitive.git', { 'tag': 'v3.1' } "works
" Plug 'https://github.com/tpope/vim-fugitive.git', { 'commit': 'cd7db1d' }
" Plug 'https://github.com/tpope/vim-fugitive.git', { 'tag': 'v3.2' }
Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/vim-scripts/mru.vim.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/luochen1990/rainbow.git' "breaks vimwiki link collapsing
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/AndrewRadev/switch.vim.git'
Plug 'https://github.com/statox/vim-compare-lines'
Plug 'https://github.com/ntpeters/vim-better-whitespace'
Plug 'https://github.com/triglav/vim-visual-increment.git'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-dispatch'
" Plug 'https://github.com/vim-scripts/LargeFile'
" Plug 'https://github.com/LucHermitte/lh-vim-lib'
" Plug 'https://github.com/LucHermitte/vim-build-tools-wrapper'
" Plug 'https://github.com/heaths/vim-msbuild' "not sure if this works
Plug 'https://github.com/tpope/vim-abolish'
" Plug 'https://github.com/rickhowe/diffchar.vim'
Plug 'https://github.com/skywind3000/asyncrun.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'https://github.com/vim-scripts/Conque-Shell'
" Plug 'https://github.com/craigemery/vim-autotag' " didn't like this
" Plug 'https://github.com/lifepillar/vim-mucomplete'
Plug 'https://github.com/drzel/vim-scroll-off-fraction'
Plug 'https://github.com/vimwiki/vimwiki', {'tag': 'dev'}

" snippets
" Plug 'https://github.com/SirVer/ultisnips'
" Plug 'https://github.com/honza/vim-snippets'
" ES2015 code snippets (Optional)
" Plug 'epilande/vim-es2015-snippets'
" React code snippets
" Plug 'epilande/vim-react-snippets'

" Plug 'https://github.com/vim-airline/vim-airline.git' "performance hit for using this
" Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/itchyny/lightline.vim'

"syntax plugins
" Plug 'https://github.com/vim-syntastic/syntastic'
" Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/pangloss/vim-javascript.git'
" Plug 'https://github.com/othree/yajs.vim'
" Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty'
Plug 'https://github.com/okcompute/vim-javascript-motions'
Plug 'git://github.com/mustache/vim-mustache-handlebars.git'
Plug 'https://github.com/kchmck/vim-coffee-script.git'
Plug 'https://github.com/Glench/Vim-Jinja2-Syntax.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'https://github.com/PProvost/vim-ps1.git'
Plug 'https://github.com/tikhomirov/vim-glsl'
Plug 'https://github.com/danielroseman/pygd-vim'
Plug 'https://github.com/udalov/kotlin-vim'
Plug 'https://github.com/elzr/vim-json'
Plug 'https://github.com/vim-scripts/tf2.vim'
Plug 'https://github.com/zchee/vim-flatbuffers'
Plug 'https://github.com/cespare/vim-toml'
" Plug 'https://github.com/gabrielelana/vim-markdown' "breaks vimwiki
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'https://github.com/keith/swift.vim'
Plug 'https://github.com/calviken/vim-gdscript3'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'chaiscript/vim-chaiscript'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/aiya000/vim-ghcid-quickfix'

" JS imports support
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plug 'https://github.com/Konfekt/FastFold.git' "supposed to optimize non-manual folding on insert mode entry

Plug 'https://github.com/airblade/vim-rooter'
" Plug 'https://github.com/wellle/context.vim' "too slow as of Dec 2019
Plug 'https://github.com/glts/vim-magnum'
Plug 'https://github.com/glts/vim-radical'
" Plug 'metakirby5/codi.vim'

" Plug 'mattn/emmet-vim' "doesnt work with mustache well
" Plug 'https://github.com/joeytwiddle/sexy_scroller.vim.git' "eff this

Plug 'https://github.com/machakann/vim-swap'

call plug#end()
