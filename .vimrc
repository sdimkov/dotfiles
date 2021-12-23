call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
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
colorscheme onedark
set termguicolors

" Status line
set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }

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
noremap ` :NERDTreeToggle<CR>|              " Toggle NerdTree
noremap <leader>` :NERDTreeFind<CR>|        " Open current file in NerdTree
noremap m :Leaderf mru<CR>|                 " Most recent files
noremap <leader>s :Leaderf! rg |            " Global text search
vnoremap s "zy:Leaderf! rg -F '<C-R>z'<CR>| " Find usages of selected text
noremap <leader>w :bd<CR>                   " Close current buffer
noremap <leader>q :q!<CR>                   " Quit Vim
