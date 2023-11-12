function! ConfigEnv()
    colorscheme industry
    set number                                  "" Show line number
    set syntax=on                               "" Syntax highlight
    set tabstop=4                               "" Tab length
    set expandtab                               "" ???
    set autoindent                              "" Follow previous identation
    set shiftwidth=4                            "" ??
    set nowrap                                  "" Disable line wrapping
    
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
    nnoremap <C-Z> :bprevious               <CR>
    nnoremap <C-X> :bnext                   <CR>

    "" File explorer
    nnoremap <C-B> :Vexplore 40             <CR>
    nnoremap <S-B> :Explore                 <CR>

    "" Quit and save
    nnoremap <C-Q> :bdelete                 <CR>
    nnoremap <C-S> :w                       <CR>

    "" Window resize
    noremap <A-UP> :resize -1      <CR>
    noremap <A-LEFT> :vertical resize -1    <CR>
    noremap <A-RIGHT> :vertical resize +1   <CR>
    noremap <A-DOWN> :resize +1    <CR>

    "" line dragging
    noremap <C-UP>     :m .-2               <CR>
    noremap <C-DOWN>   :m .+1               <CR>
    noremap <C-LEFT>   :<                   <CR>
    noremap <C-RIGHT>  :>                   <CR>

    "" Build a project 
    nnoremap <F5>   :call BuildProject()    <CR>
    
    "" Reload keymap
    nnoremap <F12>  :call ConfigKeymap()    <CR>

    "" Folding
    nnoremap <C-K> v ]} zf <CR>
    nnoremap <C-L> zd <CR>
endfunction

:call ConfigEnv()
:call ConfigKeymap()
