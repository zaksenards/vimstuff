"" Try to build a cmake/make file 
function! BuildProject()
    if has('win32')
        if filereadable('CMakeLists.txt')
            :!cmake -S . -B build
            :!cmake --build build
        elseif filereadable('Makefile')
            :make
        else
            echo "Can't find a valid build file"
        endif
    else
        echo "There are no build rules for this operatin system"
    endif
endfunction
