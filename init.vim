colorscheme industry

"" General settings
set number
set syntax=on
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4
set inccommand=split
set clipboard=unnamed

"" Switch from buffers
nnoremap <C-Z> :bprevious           <CR>
nnoremap <C-X> :bnext               <CR>

"" File explorer
nnoremap <C-B> :Vexplore            <CR>
nnoremap <S-B> :Explore             <CR>

"" Quit and save
nnoremap <C-Q> :q                   <CR>
nnoremap <C-S> :w                   <CR>

"" File dragging
nnoremap <C-UP>     :m .-2          <CR>
nnoremap <C-DOWN>   :m .+1          <CR>
nnoremap <C-LEFT>   :<              <CR>
nnoremap <C-RIGHT>  :>              <CR>

"" Build and run
nnoremap <F5>   :call MSVCBuild()   <CR>
nnoremap <F6>   :call MSVCRun()     <CR>

"" Function for build the project 
function! MSVCBuild()
    if has('win32')
        :!cmake --build build
    endif
endfunction

" Function for run the project binary.
" i'd use a intermediate file (project.vim) where i'd define
" two variables: binDebug and binRelease.
" The intermediate file is located on project folder.
" Isn't the best way but works :)
function! MSVCRun()
    if exists('$binDebug')
        if(filereadable($binDebug))
           execute('!'.$binDebug) 
        else
            echo "Invalid binary path"
        endif
    else
        echo "binary path isn't defined"
    endif
endfunction

"" nvim settings
if has('nvim')
    :cd $HOMEDRIVE/$HOMEPATH
endif
