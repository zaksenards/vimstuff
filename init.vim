set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

colorscheme industry

" My settings
set number
set autoindent
set syntax=on
set tabstop=4
set shiftwidth=4
set inccommand=split
set clipboard=unnamed
set expandtab

" NERDTree
map <C-N> :NERDTreeToggle <cr>

" Tabs 
map <C-Q> :call CloseTab() <cr>
map <C-Right> :tabn <cr>
map <C-Left> :tabp <cr>
map <C-P> :tabnew <cr>

" Terminal
:tnoremap <Esc> <C-\><C-n>

function CloseTab()
	if(@% == "")
		:q!
	endif
endfunction()
