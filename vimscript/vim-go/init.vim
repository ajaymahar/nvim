" set autowrite


" -- " Move quickfix window with crtl + n for next error
" -- " Use Leader key + a to close the quickfix window
" -- " Use crtl + m to jump to previos error
" -- " Use ctrl + c to run test covrage
" map <C-k> :cprevious<CR>
" map <C-j> :cnext<CR>
" map <C-c> :GoCoverage<CR>
nnoremap <leader>a :cclose<CR>

" -- " run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" -- " Use ,b to build go code
" -- " Use ,r to run go code
" -- " Use ,t to run go test cases
autocmd FileType go nmap ,b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap ,r  <Plug>(go-run)
autocmd FileType go nmap ,t  <Plug>(go-test)

" -- " We can improve it to control how it opens the alternate file.
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" -- " But calling :GoInfo every time is tedious. We can make some improvements to call it faster.
" -- " autocmd FileType go nmap <Leader>i <Plug>(go-info)
" -- 
" -- " set 4 spaces for tab in golang files
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" let g:go_fmt_command = "goimports"
" let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
" -- " json snippet can be set as camelcase or snake_case
" -- " snake_case is default one uncomment below line for camelcase
let g:go_addtags_transform = "camelcase"
" -- "
" -- "
" -- " syntax highlighting enabled
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
" -- "
" -- "
" -- " build tags highlighting
let g:go_highlight_build_constraints = 1


let g:syntastic_go_checkers = ['golint', 'govet', 'golangci-lint']
" let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_metalinter_enabled = ["govet", 'vet', 'errcheck', 'errname', 'deadcode', 'gosimple', 'ineffassign', 'staticcheck', 'structcheck', 'typecheck', 'unused', 'varcheck', 'bodyclose', 'goconst', 'godox', 'goerr113', 'gofmt', 'goimports', 'gosec', 'lll', 'misspell', 'nilerr', 'nlreturn', 'noctx', 'paralleltest', 'promlinter', 'revive', 'rowserrcheck', 'sqlclosecheck', 'unconvert', 'unparam', 'wrapcheck']
" let g:go_metalinter_autosave_enabled = ['govet', 'vet', 'errcheck', 'errname', 'deadcode', 'gosimple', 'ineffassign', 'staticcheck', 'structcheck', 'typecheck', 'unused', 'varcheck', 'bodyclose', 'goconst', 'godox', 'goerr113', 'gofmt', 'goimports', 'gosec', 'lll', 'misspell', 'nilerr', 'nlreturn', 'noctx', 'paralleltest', 'promlinter', 'revive', 'rowserrcheck', 'sqlclosecheck', 'unconvert', 'unparam', 'wrapcheck']
let g:go_metalinter_deadline = "30s"
" let g:go_metalinter_autosave = 1
let g:go_metalinter_command = "golangci-lint"
let g:go_list_autoclose = 1

let g:go_doc_popup_window = 0
let g:go_def_mode = 'gopls'
let g:go_info_mode='gopls'
" -- " disable vim-go :GoDef short cut (gd)
" -- " this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
" -- "
" -- " Currently by default :GoDecls and :GoDeclsDir show type and function declarations.
" -- " This is customizable with the g:go_decls_includes setting. By default it's in the form of:
let g:go_decls_includes = "func,type"
" -- " let g:go_decls_includes = "func"
" -- "
" -- "
" -- " vim-go has a support to automatically show the information whenever you move your cursor.
let g:go_auto_type_info = 1

set updatetime=100

" -- " vim-go can automatically highlight matching identifiers.
" -- " let g:go_auto_sameids = 1
" -- "
" -- "
" -- "
" -- " Setup debuggig keybindings for golang
let g:go_debug_mappings = {
    \ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
    \ '(go-debug-next)': {'key': 'j', 'arguments': '<nowait>'},
    \ '(go-debug-step)': {'key': 'J'},
  \}

let g:go_debug_windows = {
            \ 'vars':       'leftabove 30vnew',
            \ 'stack':      'leftabove 20new',
            \ 'goroutines': 'botright 10new',
            \ 'out':        'botright 5new',
  \ }
map dp :GoDebugBreakpoint<CR>
map gs :GoDebugStart<CR>
map gk :GoDebugStepOut<CR>
map gq :GoDebugStop<CR>

let g:go_debug_breakpoint_sign_text = '>'
let g:go_debug_log_output = 'debugger'

let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1

" -- " " somethig related to folding
let g:go_fmt_experimental = 1

" -- "For Folding
" --   "Method for folding
set foldmethod=indent
" --   "Open all when entering for the first time - " set foldlevel=20 -   " Save the state for the next time
autocmd BufWinLeave *.* mkview
" -- " autocmd BufWinEnter *.* silent! loadview
autocmd BufWritePre *.go lua goimports(1000)

let g:go_doc_keywordprg_enabled = 1

" prettify sql:
vnoremap <leader>p :s/\<update\>\\|\<select\>\\|\<from\>\\|\<where>\\|\<left join\>\\|\<inner join\>\\|\<group by\>\\|\<order by\>/\r\U&/ge<cr><esc>
