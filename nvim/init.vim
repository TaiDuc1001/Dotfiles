" General Settings
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
set mouse=a
set nuw=5
set number
set relativenumber
set tabstop=2
set guifont=FiraCode\ NF:h14
set shiftwidth=2 
set expandtab
set listchars=tab:\ \ 
set list
set foldmethod=manual        
set ignorecase 
set foldcolumn=3
set cursorline
set cursorlineopt=number
set showcmd
set wrap linebreak
let NERDTreeShowHidden=1
autocmd vimenter * set signcolumn=auto:1

" Create alias
let init = 'cd '.'C:\Users\DUC\AppData\Local\nvim'
let config = 'cd '.'C:\Users\DUC\Documents\Code\Config'

" Function call path
	function s:foo(path)
		execute a:path
	endfunction
		
" Create new command by calling function
command! Init call s:foo(g:init)
command! Config call s:foo(g:config)


syntax on


" Disable backup
set nobackup
set nowb
set noswapfile



" Plugins
call plug#begin('~/AppData/Local/nvim/plugged')

" Auto save
  Plug '907th/vim-auto-save'
  Plug 'tpope/vim-surround'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'vifm/vifm.vim'
  Plug 'ap/vim-css-color'
  Plug 'glepnir/dashboard-nvim'
	Plug 'liuchengxu/vim-clap'
" Alias?
	" Plug 'Konfekt/vim-alias'

" Themes
	" plug 'romainl/apprentice'
	" plug 'morhetz/gruvbox'
	" plug 'catppuccin/vim'
	" plug 'savq/melange'
	" plug 'arcticicestudio/nord-vim'
	" plug 'pineapplegiant/spaceduck'
	" Plug 'sainnhe/edge'
	" Plug 'sainnhe/sonokai'
	" Plug 'kaicataldo/material.vim'
	Plug 'phanviet/vim-monokai-pro'

" File browser
	Plug 'preservim/nerdTree' 						
	Plug 'Xuyuanp/nerdtree-git-plugin' 				
	Plug 'ryanoasis/vim-devicons' 					
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync'

" Fuzzy finder
	" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	" Plug 'junegunn/fzf.vim'

" Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

" Floaterm
	Plug 'voldikss/vim-floaterm' 	

" Intellicense
	Plug 'neoclide/coc.nvim', {'branch': 'release'} 
	Plug 'jiangmiao/auto-pairs'
	Plug 'mattn/emmet-vim'
	Plug 'preservim/nerdcommenter'
	Plug 'liuchengxu/vista.vim'
	Plug 'alvan/vim-closetag'

" Syntax highlight
	Plug 'yuezk/vim-js' 
	Plug 'sheerun/vim-polyglot'
	Plug 'jackguo380/vim-lsp-cxx-highlight'

" Debugging
	Plug 'puremourning/vimspector'

" Version control
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'

call plug#end()
nnoremap <C-/>   <Plug>NERDCommenterToggle
vnoremap <C-/>   <Plug>NERDCommenterToggle<CR>gv
vnoremap <silent> <F9> :CarbonNowSh<CR>

" nnoremap <C-_>   <Plug>NERDCommenterToggle
" vnoremap <C-_>   <Plug>NERDCommenterToggle<CR>gv


" Set theme
set termguicolors
colorscheme monokai_pro
" let g:indentLine_fileTypeExclude = ['dashboard']
" let g:dashboard_default_executive ='clap'

" Enable clipboard Windows
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif


" Map Tab -> Switch Buffers
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Disable auto comment in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


packloadall
silent! helptags ALL

" Search highlighted Text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


" Reload changes outside
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


" Load setting files
let nvim_settings_dir = '~\AppData\Local\nvim\settings\'
execute 'source'.nvim_settings_dir.'nerdtree.vim'
execute 'source'.nvim_settings_dir.'fzf.vim'
execute 'source'.nvim_settings_dir.'floaterm.vim'
execute 'source'.nvim_settings_dir.'airline.vim'
execute 'source'.nvim_settings_dir.'coc.vim'
execute 'source'.nvim_settings_dir.'vimspector.vim'
execute 'source'.nvim_settings_dir.'nerdcommenter.vim'
execute 'source'.nvim_settings_dir.'vim-gitgutter.vim'
execute 'source'.nvim_settings_dir.'dashboard-nvim.vim'
execute 'source'.nvim_settings_dir.'vim-auto-save.vim'




 "
 " let g:dashboard_custom_shortcut_icon['last_session'] = ' '
 " let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
 " let g:dashboard_custom_shortcut_icon['find_file'] = ' '
 " let g:dashboard_custom_shortcut_icon['new_file'] = ' '
 " let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
 " let g:dashboard_custom_shortcut_icon['find_word'] = ' '
 " let g:dashboard_custom_shortcut_icon['book_marks'] = ' '
