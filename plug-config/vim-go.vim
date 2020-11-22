set autowrite

" Move quickfix window with crtl + n for next error
" Use Leader key + a to close the quickfix window
" Use crtl + m to jump to previos error
" Use ctrl + c to run test covrage
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
map <C-c> :GoCoverage<CR>
nnoremap <leader>a :cclose<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Use ,b to build go code
" Use ,r to run go code
" Use ,t to run go test cases
autocmd FileType go nmap ,b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap ,r  <Plug>(go-run)
autocmd FileType go nmap ,t  <Plug>(go-test)

" We can improve it to control how it opens the alternate file.
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" But calling :GoInfo every time is tedious. We can make some improvements to call it faster.
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" set 4 spaces for tab in golang files
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
" json snippet can be set as camelcase or snake_case
" snake_case is default one uncomment below line for camelcase
" let g:go_addtags_transform = "camelcase"
"
"
" syntax highlighting enabled
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
"
"
" build tags highlighting
let g:go_highlight_build_constraints = 1


let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

let g:go_def_mode = 'godef'
"
" Currently by default :GoDecls and :GoDeclsDir show type and function declarations.
" This is customizable with the g:go_decls_includes setting. By default it's in the form of:
" let g:go_decls_includes = "func,type"
" let g:go_decls_includes = "func"
"
"
" vim-go has a support to automatically show the information whenever you move your cursor.
let g:go_auto_type_info = 1

set updatetime=100

" vim-go can automatically highlight matching identifiers.
" let g:go_auto_sameids = 1
