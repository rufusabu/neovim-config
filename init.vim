call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'nvie/vim-flake8'
Plug 'honza/vim-snippets'
"Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'benwainwright/fzf-switch-project'
Plug 'edkolev/tmuxline.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'tweekmonster/django-plus.vim'
Plug 'jceb/vim-orgmode'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'rakr/vim-one'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ollykel/v-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mileszs/ack.vim'
Plug 'calviken/vim-gdscript3'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'amix/vim-zenroom2'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'justinmk/vim-sneak'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rbgrouleff/bclose.vim'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

runtime macros/matchit.vim

set nu
set matchpairs+=<:>
"set showtabline=2
if (has("termguicolors"))
  set termguicolors
endif

"For vimwiki
set nocompatible
filetype plugin on
syntax on


"let g:maplocalleader = ','
let g:mapleader = "\<space>"
let g:asyncrun_open = 6
let g:user_emmet_leader_key = ','
let g:NERDTreeWinPos = "left"
let g:airline_powerline_fonts = 1
"Sliver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'


map <leader>t :AsyncRun
map <leader>T :AsyncStop<CR> 

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

nnoremap <silent> <leader>z :Goyo<CR>
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

nnoremap <silent> <C-j> :tabp<CR> 
nnoremap <silent> <C-k> :tabn<CR> 
nnoremap <silent> <C-l> :bnext<CR> 
nnoremap <silent> <C-h> :bprevious<CR> 

nnoremap <silent> <F8> :!autopep8 --in-place %<CR>
nnoremap <silent> <F9> :!autopep8 --in-place -a %<CR>

inoremap <C-s> <Esc>:Update<CR>
" au VimEnter *  NERDTree

"Session Management
let g:session_directory = "~/.config/nvim/sessions"
let g:session_autoload = "no"
let g:session_autosave = "yes"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" Write Shortcut
nnoremap <C-s> :w<cr>

set complete+=kspell
set timeoutlen=500
set mouse=a

" Set line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:Hexokinase_highlighters = ['virtual']

" Prettier Settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql,*.vue PrettierAsync
autocmd BufRead,BufNewFile *.md setlocal spell

"Set EJS to HTML
au BufNewFile,BufRead *.ejs set filetype=html

colorscheme one
set background=light
let g:airline_theme = "one"
let g:airline#extensions#tabline#enabled = 1

" Transparency
"hi Normal guibg=NONE ctermbg=NONE

"Disable Arrow Keys and Escape
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

