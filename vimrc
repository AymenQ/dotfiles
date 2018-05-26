call plug#begin()
Plug 'lervag/vimtex'
Plug 'ajh17/VimCompletesMe'
Plug 'xuhdev/SingleCompile'
call plug#end()

let g:vimtex_view_method = 'sumatrapdf'
let g:vimtex_view_enabled = 'false'
let g:vimtex_compiler_latexmk = {'backend': 'jobs', 'callback' : 0}
augroup VimCompletesMeTex
    autocmd!
    autocmd FileType tex
        \ let b:vcm_omni_pattern = g:vimtex#re#neocomplete
augroup END

augroup vimtex_config
    au!
    au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
