" default mapping to active ctrlp with ctrl + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'

" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore:

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|github|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|github|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }

"  Use a custom file listing command:
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" let g:ctrlp_by_filename = 1 
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_reuse_window = 'netrw'
" Where to put the new tab page when opening one: >
"   let g:ctrlp_tabpage_position = 'ac'
" <
"   a - after.
"   b - before.
"   c - the current tab page.
"   l - the last tab page.
"   f - the first tab page.
let g:ctrlp_tabpage_position = 'ac'

" Note: you can quickly purge the cache by pressing <F5> while inside CtrlP.
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_show_hidden = 0
let g:ctrlp_open_multiple_files = 'vjr'


" Specify the number of recently opened files you want CtrlP to remember: >
let g:ctrlp_mruf_max = 250

" Files you don't want CtrlP to remember. Use regexp to specify the patterns: >
let g:ctrlp_regexp = 1


let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*\|*.git' " MacOSX/Linux
" let g:ctrlp_mruf_exclude = '^C:\\dev\\tmp\\.*' " Windows

