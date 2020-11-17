let g:startify_session_dir = '~/.config/nvim/session'

" We can specify what shows up in our menu like this:
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

"
let g:startify_bookmarks = [
            \ { 'g': '~/GITHUB' },
            \ { 'z': '~/.zshrc' },
            \ ]

" Restart session automatically
let g:startify_session_autoload = 1

" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1

" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" If you want Unicode
let g:startify_fortune_use_unicode = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0

let g:startify_custom_header = [
              \'       _                             _             __     _________ ',
              \'      (_)                           | |            \ \   / /__   __|',
              \'  __ _ _  __ _ _   _ _ __ ___   __ _| |__   __ _ _ _\ \_/ /   | |',   
              \' / _  | |/ _  | | | |  _   _ \ / _  |  _ \ / _  |  __\   /    | |',   
              \'| (_| | | (_| | |_| | | | | | | (_| | | | | (_| | |   | |     | |',   
              \' \__,_| |\__,_|\__, |_| |_| |_|\__,_|_| |_|\__,_|_|   |_|     |_|',   
              \'     _/ |       __/ |                                              ', 
              \'    |__/       |___/                                               ', 
              \ ]
