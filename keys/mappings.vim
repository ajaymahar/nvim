" Remove tralling white spaces while saving any files
autocmd BufWritePre * %s/\s\+$//e

" Comment/uncomment block of code with /
" Use / when you select the code and wnat to comment out
" Use // when you are in noraml mode and want to comment/uncomment block of code
" Use . when you wan tot comment out single line at a time.
vmap / gc
nmap // gcap
nmap .. gcc

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

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" does not work on MacOs
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <esc>
inoremap kj <esc>

" resize panes
nnoremap <silent> <Right> :vertical resize +5<cr>
nnoremap <silent> <Left> :vertical resize -5<cr>
nnoremap <silent> <Up> :resize +5<cr>
nnoremap <silent> <Down> :resize -5<cr>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwUi<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Batter moving/shifting block of code
" select the block of code or peragraph using v or V
" use K to move upwords
" use J to move downwords
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" Flottting terminal mapping
nnoremap <silent> <Leader><Leader>t :FloatermNew --wintype=normal --height=10<CR>
nnoremap <silent> <Leader><Leader>f :FloatermNew fzf<CR>
nnoremap <silent> <Leader><Leader>g :FloatermNew lazygit<CR>
nnoremap <silent> <Leader><Leader>n :FloatermNew node<CR>
nnoremap <silent> <Leader><Leader>p :FloatermNew python<CR>


" Tagbar keybinding
nnoremap <C-t> :TagbarToggle<CR>

" close all buffers except the current one
nnoremap <C-w> :BufOnly<CR>
