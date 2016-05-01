let mapleader = " "
let g:mapleader = " "

" Fast saving 
nmap <leader>, :w<cr>
"source ~/.vimrc
nmap  <leader>fer :source ~/.vimrc<cr>
nmap  <leader>fed  :e ~/.vimrc<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree  config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast opne NERDTree
nmap <leader>pt :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer  config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bl :bl<cr>
nmap <leader>bf :bf<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>ef <Plug>(easymotion-bd-f)
nmap <Leader>ef <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap <leader>  <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>eL <Plug>(easymotion-bd-jk)
nmap <Leader>eL <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>ew <Plug>(easymotion-bd-w)
nmap <Leader>ew <Plug>(easymotion-overwin-w)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouComleteMe config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM 补全菜单配色
" 菜单
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
" let
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnipsEdit config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




call plug#begin('~/.vim/plugged') 
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' "file drawe
Plug 'easymotion/vim-easymotion'
Plug 'isRuslan/vim-es6'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'ternjs/tern_for_vim'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
call plug#end()


" Color Theme
set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
colorscheme evening


" Config
set number
set cursorline
set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2


" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Config for airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'cool'


" Auto complete
let g:python_host_prog = '/usr/bin/python'





" tagbar
nnoremap <silent> <Leader>t t :TagbarToggle<CR>




" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
"" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
"" 色块宽度
"let g:indent_guides_guide_size=1
"" 快捷键 i 开/关缩进可视化
"nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" 显示/隐藏 MiniBufExplorer 窗口
"map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
"map <C-Tab> :MBEbn<cr>
"map <C-S-Tab> :MBEbp<cr>


let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1



