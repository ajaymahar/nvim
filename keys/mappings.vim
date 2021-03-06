" Remove tralling white spaces while saving any files
autocmd BufWritePre * %s/\s\+$//e


" ========================== Arrow keys =========================
" Disabling Right arrow keys :)
nnoremap <Right> :echo "No left for you!"<CR>
vnoremap <Right> :<C-u>echo "No left for you!"<CR>
inoremap <Right> <C-o>:echo "No left for you!"<CR>

" Disabling Left arrow keys :)
nnoremap <Left> :echo "No right for you!"<CR>
vnoremap <Left> :<C-u>echo "No right for you!"<CR>
inoremap <Left> <C-o>:echo "No right for you!"<CR>

" Disabling Up arrow keys :)
nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>

" Disabling Down arrow keys :)
nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>

" =============Tagbar=======================================

" Tagbar keybinding
nnoremap <C-t> :TagbarToggle<CR>

" =======================NvimTree=============================
" NvimTreeToggle
nnoremap <silent> <Leader>e :NvimTreeToggle<CR>

" =================Barbar buffer==============================
" Simulate same TAB behavior in VSCode
nmap <Tab> :Tabnext<CR>
nmap <S-Tab> :Tabprev<CR>
" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :BufferNext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :BufferPrevious<CR>
" close current buffer
nnoremap <C-w> :BufferClose<CR>
" TAB in general mode will move to text buffer
nnoremap <silent> bp :BufferPick<CR>

" ==============================================================

" Flottting terminal mapping
nnoremap <silent> <Leader>t :FloatermNew --wintype=normal --height=10<CR>

" Basic Key Mappings
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" " g Leader key
" let mapleader=" "
" " let localleader=" "
" nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')


else

  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>


  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " Alternate way to save
  " nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " " Terminal window navigation
  " tnoremap <C-h> <C-\><C-N><C-w>h
  " tnoremap <C-j> <C-\><C-N><C-w>j
  " tnoremap <C-k> <C-\><C-N><C-w>k
  " tnoremap <C-l> <C-\><C-N><C-w>l
  " inoremap <C-h> <C-\><C-N><C-w>h
  " inoremap <C-j> <C-\><C-N><C-w>j
  " inoremap <C-k> <C-\><C-N><C-w>k
  " inoremap <C-l> <C-\><C-N><C-w>l
  " tnoremap <Esc> <C-\><C-n>

  " Use alt + hjkl to resize windows
  " nnoremap <silent> <M-j>    :resize -2<CR>
  " nnoremap <silent> <M-k>    :resize +2<CR>
  " nnoremap <silent> <M-h>    :vertical resize -2<CR>
  " nnoremap <silent> <M-l>    :vertical resize +2<CR>

"   nnoremap <silent> <C-Up>    :resize -2<CR>
"   nnoremap <silent> <C-Down>  :resize +2<CR>
"   nnoremap <silent> <C-Left>  :vertical resize -2<CR>
"   nnoremap <silent> <C-Right> :vertical resize +2<CR>

  " let g:elite_mode=0                      " Disable arrows"
  " " Disable arrow movement, resize splits instead.
  " if get(g:, 'elite_mode')
  "     nnoremap <C-Up>    :resize -2<CR>
  "     nnoremap <C-Down>  :resize +2<CR>
  "     nnoremap <C-Left>  :vertical resize -2<CR>
  "     nnoremap <C-Right> :vertical resize +2<CR>
  " endif

" Comment/uncomment block of code with /
" Use / when you select the code and wnat to comment out
" Use // when you are in noraml mode and want to comment/uncomment block of code
" Use . when you wan tot comment out single line at a time.
vmap / gc
nmap ,. gcap
nmap , gcc

endif

