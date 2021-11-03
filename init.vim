function! ConfigEnv()
    colorscheme industry
    set number                                  "" Show line number
    set syntax=on                               "" Syntax highlight
    set tabstop=4                               "" Tab length
    set expandtab                               "" ???
    set autoindent                              "" Follow previous identation
    set shiftwidth=4                            "" ??
    
    if has('nvim')
        set clipboard=unnamed                   "" ??
        set inccommand=split                    "" ??
    endif

    if has("win32")
        "" Default home directory 
        :cd $HOMEDRIVE/$HOMEPATH
    endif
endfunction

function! ConfigKeymap()
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

    "" Build a project 
    nnoremap <F5>   :call BuildProject()   <CR>

    "" Reload
endfunction

:call ConfigEnv()
:call ConfigKeymap()
