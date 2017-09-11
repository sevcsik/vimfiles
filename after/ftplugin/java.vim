setlocal omnifunc=javacomplete#Complete
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.java='[^. *\t]\.\w*'
"let g:syntastic_java_checkers=['javac']
"let g:syntastic_java_javac_config_file_enabled=1


nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
