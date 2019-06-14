set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/kien/ctrlp.vim.git'

"Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'https://github.com/bentayloruk/vim-react-es6-snippets.git'
Plugin 'mxw/vim-jsx'

Plugin 'posva/vim-vue'

Plugin 'vim-scripts/Emmet.vim'
Plugin 'vim-scripts/WebAPI.vim'

Plugin 'isRuslan/vim-es6'

Plugin 'scrooloose/nerdtree'

Plugin 'MattesGroeger/vim-bookmarks'

Plugin 'airblade/vim-gitgutter'

Plugin 'pangloss/vim-javascript'
Plugin 'https://github.com/tpope/vim-haml.git'

Plugin 'https://github.com/leafgarland/typescript-vim'

Plugin 'Shougo/neocomplete'

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

Plugin 'editorconfig/editorconfig-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set clipboard=unnamed
set showtabline=2
set tabline+=%F


set ts=2
set shiftwidth=2
set autoindent
set expandtab

set number
set foldmethod=syntax
"set foldmethod=indent
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldenable              " 开始折叠
set nofoldenable
set hlsearch
set nobackup                " 覆盖文件时不备份
set bsdir=buffer
set autochdir               " 自动切换当前目录为当前文件所在的目录
set autoread                " set to auto read when a file changed from the outside
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
" set list
set smartindent             " 开启新行时使用智能自动缩进

" set listchars=tab:>-,trail:- 

set background=dark
colorscheme solarized


" solarized options 
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:molokai_original = 1
let g:rehash256 = 1
"colorscheme molokai

map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>
map <C-h> <C-w><C-h>

let g:user_emmet_jsx = 1
let g:jsx_ext_required = 0

" vim emmet
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets.json')), "\n"))

"let g:user_emmet_expandabbr_key = '<c-e>'
let g:user_emmet_leader_key='<c-e>'
let g:use_emmet_complete_tag = 1

let g:gitgutter_avoid_cmd_prompt_on_windows=0


" ctrlp
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|data)|(\.(swp|ico|git|svn))$'


set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" ng2
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
 let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

syntax enable
