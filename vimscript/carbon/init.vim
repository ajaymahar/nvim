" Key binding for carban plugin
" Select the snippet code which you want to post
" Press C to create image
vnoremap C :CarbonNowSh<CR>

" set default browser as chrome
" let g:carbon_now_sh_browser = 'google-chrome'

" setting the font and line number
" ln -> line number
" fm -> font
" t -> theam 
" fs -> font size
" bg -> blackboard color
"
let g:carbon_now_sh_options =
  \ { 'ln': 'true',
  \ 'fm': 'JetBrains Mono', 
  \ 't': 'blackboard',
  \ 'fs': '17.5px',
  \ 'bg': 'rgba(245,166,35,1)',
  \ 'ph': '56px',
  \ 'pv': '56px',
  \ 'dsyoff': '20px' }


