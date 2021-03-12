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

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Code',
            \ ]

let g:startify_enable_special = 0
