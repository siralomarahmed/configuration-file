"#####################################################################
"        _                    
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
" 
" Ahmed Alomar - @siralomarahmed
"#####################################################################

"#############################################_Basic configurations_>#

"-Showing the line numbers:
set number

"-Highlighting the opining and closing braces:
set showmatch

"-Highlighting the search:
set hlsearch

"-Indentation settings:
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent


"####################################_Toggle between hex and binary_>#

noremap <F8> :call Binary_hex_toggle()<CR>

let $input_hex=0

function Binary_hex_toggle()
  set binary

  if $input_hex>0
    :%!xxd -r
    let $input_hex=0
  else
    :%!xxd
    let $input_hex=1
  endif

endfunction


"#####################################################################
