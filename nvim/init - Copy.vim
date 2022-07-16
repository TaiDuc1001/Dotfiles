
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=FiraCode\ NF\ 20
set mouse=a 				" Enable mouse
set tabstop=2 				" 
set shiftwidth=2 			" 
set expandtab
set listchars=tab:\ \ 		" Tab charactor 
set list
set foldmethod=manual       " fold or collapse tetx 
set foldlevelstart=99 		"  
set number 					" Show line number
set ignorecase 				" Enable case-sensitive 
set foldcolumn=0

" Disable backup
set nobackup
set nowb
set noswapfile

syntax on

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR> 		
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Map esc to jh
inoremap jh <Esc>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used for Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/AppData/Local/nvim/plugged')
" Theme
    "Plug 'base16-project/base16-vim'
    "Plug 'sonph/onehalf'
    Plug 'vimcolorschemes/vimcolorschemes'
    " Plug 'morhetz/gruvbox'
    " Plug 'joshdick/onedark.vim', 					" Dark theme
    "Plug 'overcache/NeoSolarized'
    "Plug 'pacokwon/onedarkhc.vim'


" File browser
	Plug 'preservim/nerdTree' 						" File browser  
	Plug 'Xuyuanp/nerdtree-git-plugin' 				" Git status
	Plug 'ryanoasis/vim-devicons' 					" Icon
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync' 				" Sync current file 

" File search
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 			" Fuzzy finder 
	Plug 'junegunn/fzf.vim'
" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
" Terminal
	Plug 'voldikss/vim-floaterm' 					" Float terminal
"Ale linting
    Plug 'dense-analysis/ale'
"Ctags
    Plug 'universal-ctags/ctags'

" Code intellisense

  Plug 'neoclide/coc.nvim', {'branch': 'release'} "Coc
	Plug 'jiangmiao/auto-pairs' 					" Parenthesis auto 
	Plug 'alvan/vim-closetag'
	Plug 'mattn/emmet-vim' 
	Plug 'preservim/nerdcommenter' 					" Comment code 
	Plug 'liuchengxu/vista.vim' 					" Function tag bar 
	Plug 'alvan/vim-closetag' 						" Auto close HTML/XML tag 
	
" Code syntax highlight
	Plug 'yuezk/vim-js' 							" Javascript
	Plug 'jackguo380/vim-lsp-cxx-highlight'			" C++ syntax
  
" Debugging
	Plug 'puremourning/vimspector' 					" Vimspector

" Source code version control 
	Plug 'tpope/vim-fugitive' 						" Git

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" F9 to run and compile C++ programme 
autocmd filetype cpp nnoremap <F9> :w<bar>cd %:p:h<bar>let f=expand('%')<bar>let p=expand('%:p:h')<bar>let b=expand('%:r')<bar>:vnew<bar>execute 'read !g++ '.f.' -o '.b.' && '.b<CR>


" map to switch Buffer

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
	execute 'source' setting_file
endfor


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

"avoid freeze when ^Z
let s:is_win = has('win32') || has('win64')
if s:is_win
    " ... other Windows specific settings

    nmap <C-z> <Nop>
endif

highlight VertSplit cterm=NONE
autocmd vimenter * set signcolumn=auto
autocmd vimenter * hi signcolumn ctermbg=0
" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE 
autocmd vimenter * hi LineNr ctermbg=0 ctermfg=109
let g:airline_theme='vimcolorschemes' 
" colorscheme gruvbox 
