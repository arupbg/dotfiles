set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
set term=screen-256color
