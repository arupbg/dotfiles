set nocompatible              " be iMproved, required
filetype off                  " required
set autoindent
set smartindent

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"https://elliotekj.com/2016/10/30/using-ripgrep-and-fzf-instead-of-the-silver-searcher-and-ctrlp-in-vim/
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/limelight.vim'

"https://github.com/ervandew/supertab
Plugin 'ervandew/supertab'

"https://github.com/vim-scripts/ZoomWin
Plugin 'vim-scripts/ZoomWin'

"Plugin for vim-tmux integration
Plugin 'christoomey/vim-tmux-navigator'

"Plugin for colorscheme
Plugin 'flazz/vim-colorschemes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'benmills/vimux'

" Ack vim
Plugin 'mileszs/ack.vim'

" Ag vim
Plugin 'rking/ag.vim'

"handlebars ember
Plugin 'joukevandermaas/vim-ember-hbs'

"Json formatter
Plugin 'elzr/vim-json'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Add NERDTree Tabs plugin here "
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" NerdTree 
Plugin 'scrooloose/nerdtree'

" Add NERDTree Tabs plugin here "
Plugin 'jistr/vim-nerdtree-tabs'

" NerdTree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" postcss
Plugin 'stephenway/postcss.vim'

" syntastic
Plugin 'vim-syntastic/syntastic'

" gitgutter
Plugin 'airblade/vim-gitgutter'

" have nodejs and yarn
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

"Markdown Syntax highlight
Plugin 'gabrielelana/vim-markdown'

" JSX
Plugin 'pangloss/vim-javascript'
" bug in below vim-jsx
" https://stackoverflow.com/questions/3223695/javascript-indentation-in-vim 
" Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'maxmellon/vim-jsx-pretty'

" https://github.com/FredKSchott/CoVim
" Plugin 'FredKSchott/CoVim'
" https://github.com/typeintandem/nvim
"Plugin 'typeintandem/nvim'
Plugin 'floobits/floobits-neovim'

" -------------------------------------------- REACT
" https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
" lint - https://drivy.engineering/setting-up-vim-for-react/
" install locally
" yarn add eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
" install globaly: npm i -g eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
"//--------------------------------------------
Plugin 'w0rp/ale'
Plugin 'prettier/prettier'
Plugin 'skywind3000/asyncrun.vim'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_completion_enabled = 1

" node
Plugin 'moll/vim-node'
" typescript
Plugin 'leafgarland/typescript-vim'

"File fonts
Plugin 'ryanoasis/vim-webdevicons'

"Image Preview
Plugin 'ashisha/image.vim'

"svg 
Plugin 'svg.vim'
Plugin 'jasonshell/vim-svg-indent'

"https://github.com/prettier/vim-prettier
Plugin 'prettier/vim-prettier'

Plugin 'OmniSharp/omnisharp-vim'
let g:OmniSharp_server_use_mono = 1
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'cyansprite/deoplete-omnisharp' , {'do': './install.sh'}
"Settings
""OmniSharp
filetype plugin on
let g:OmniSharp_timeout = 5

let g:ale_linters = { 'cs': ['OmniSharp'] }
set completeopt=longest,menuone
let g:OmniSharp_want_snippet=1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_path ='/Users/arup/.omnisharp/omnisharp-roslyn/OmniSharp.exe'
let g:deoplete_omnisharp_exe_path   = get(g:, "deoplete_omnisharp_exe_path", '/Users/arup/.omnisharp/omnisharp-roslyn/OmniSharp.exe')
let g:deoplete_omnisharp_port   = get(g:, "deoplete_omnisharp_port", 9999)

Plugin 'tpope/vim-dispatch'
Plugin 'Shougo/vimproc.vim'

"https://github.com/neovim/nvim.net
Plugin 'neovim/nvim.net'

"https://github.com/guyzmo/notmuch-abook
Plugin 'guyzmo/notmuch-abook'
let $NOTMUCH_CONFIG = expand("~/.notmuch-config")

"code folding
Plugin 'tmhedberg/simpylfold'
let g:SimpylFold_docstring_preview = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable
set background=light
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:indentguides_ignorelist = ['text']
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
set tabstop=2
set shiftwidth=2
set expandtab
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1
set mouse=a
let g:NERDTreeMouseMode=3


Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
" zen coding vim https://github.com/mattn/emmet-vim
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'Yggdroot/indentLine'
" Always show statusline
 set laststatus=2
"autocmd vimenter * NERDTree

" https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let mapleader = ","
noremap <leader>w :w<cr>

"vim tmux maps
" Prompt for a command to run
noremap <leader>tp :VimuxPromptCommand<cr>

" Run last command executed by VimuxRunCommand
noremap <leader>tl :VimuxRunLastCommand<cr>

" Zoom the tmux runner pane
noremap <leader>tz :VimuxZoomRunner<cr>

" Inspect tmux runner pane
noremap <leader>ti :VimuxInspectRunner<cr>

" execute ember test
nmap <leader>z :call VimuxRunCommand("ember test")<cr>

"Ack grep
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"
"grep inside vim

" opens search results in a window w/ links and highlight the matches
command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{json,pyc,css,scss} . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

"ack vim
let g:ackprg = 'ag --nogroup --nocolor --column'

" Some settings to enable the theme:
set number
syntax enable
set background=dark
let g:solarized_termcolors = 256  " New line!!
"colorscheme solarized
colorscheme PaperColor

"setting NERDTree mouse to work within tmux
"https://superuser.com/questions/549930/cant-resize-vim-splits-inside-tmux
set mouse+=a
if &term =~ '^screen'
      " tmux knows the extended mouse mode
      "set ttymouse=xterm2
      set ttymouse=xterm2
endif

" Toggle NerdTree
nmap <F6> :NERDTreeToggle<CR>

" set diffopt+=vertical for vertical tabs in fugitive Gdiff
set diffopt+=vertical

" set guifont
if has('gui_running')
  set guifont=MesloLGMDZForPowerline-Regular:h11
endif
set clipboard=unnamed

" Open file via NERDTree Tabs, hot key: \t "
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" Start NERDTree Tabs automatically "
" let g:nerdtree_tabs_open_on_console_startup = 1
set encoding=utf-8

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Markdown Preview Setup
" set to 1, the nvim will open the preview window once enter the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will just refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it just can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server only listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle'
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
"
"-- FOLDING --
:set foldmethod=syntax "syntax highlighting items specify folds
":set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
:set foldlevelstart=99 "start file with all folds opened

" toggle relative line numbers
:set relativenumber!
:set rnu!

" turn relative line numbers on
:set relativenumber
:set rnu
autocmd filetype crontab setlocal nobackup nowritebackup
