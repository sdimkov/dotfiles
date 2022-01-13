call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'ryanoasis/vim-devicons'
Plug 'TaDaa/vimade'
Plug 'tpope/vim-commentary'
call plug#end()

filetype plugin indent on
set number
set ruler
set mouse=a
set cursorline
set lazyredraw 
set noswapfile
set encoding=UTF-8
set clipboard=unnamed
set list listchars=tab:»\ ,trail:·

" Theme
syntax on
set termguicolors
set noshowmode
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
set laststatus=2

" Git Gutter
set signcolumn=yes
set updatetime=250

" LeaderF
let g:Lf_HideHelp = 1

" Remember last file position
autocmd BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") |  exe "normal! g'\"" | endif

" NERDTree
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeMouseMode  = 3
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 50
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key mappings
noremap  <silent> `         :NERDTreeToggle<CR>|      " Toggle NerdTree
noremap  <silent> §         :NERDTreeToggle<CR>|      " Toggle NerdTree (M1 layout)
noremap  <silent> <leader>` :NERDTreeFind<CR>|        " Open current file in NerdTree
noremap  <silent> <leader>§ :NERDTreeFind<CR>|        " Open current file in NerdTree (M1 layout)
noremap  <silent> m :Leaderf mru<CR>|                 " Most recent files
noremap  <silent> <leader>s :Leaderf! rg |            " Global text search
vnoremap <silent> s "zy:Leaderf! rg -F '<C-R>z'<CR>|  " Find usages of selected text
noremap  <silent> <Tab>     :bp<CR>|                  " Go to prev buffer
noremap  <silent> <S-Tab>   :bn<CR>|                  " Go to next buffer
noremap  <silent> <leader>w :bd<CR>|                  " Close current buffer
noremap  <silent> <leader>q :q!<CR>|                  " Quit Vim
