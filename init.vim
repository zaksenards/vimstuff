colorscheme industry

function! ConfigFlags()
    set number                                  "" Show line number
    set syntax=on                               "" Syntax highlight
    set tabstop=4                               "" Tab length
    set expandtab                               "" ???
    set autoindent                              "" Follow previous identation
    set shiftwidth=4                            "" ??
    
    if has('nvim')
        set clipboard=unnamed                       "" ??
        set inccommand=split                        "" ??
    endif
endfunction
:ConfigFlags()


"" Switch from buffers
nnoremap <C-Z> :bprevious           <CR>
nnoremap <C-X> :bnext               <CR>

"" File explorer
nnoremap <C-B> :Vexplore 40         <CR>
nnoremap <S-B> :Explore             <CR>

"" Quit and save
nnoremap <C-Q> :bdelete             <CR>
nnoremap <C-S> :w                   <CR>

"" line dragging
nnoremap <C-UP>     :m .-2          <CR>
nnoremap <C-DOWN>   :m .+1          <CR>
nnoremap <C-LEFT>   :<              <CR>
nnoremap <C-RIGHT>  :>              <CR>

"" Build and run
nnoremap <F5>   :call MSVCBuild()   <CR>

"" Function for build the project 
function! MSVCBuild()
    if has('win32')
        :!cmake --build build
    endif
endfunction

"" nvim settings
if has('nvim')
    :cd $HOMEDRIVE/$HOMEPATH
endif
:ConfigFlags()
