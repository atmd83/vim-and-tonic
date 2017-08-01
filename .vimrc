set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


" look and style
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'


" elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'avdgaag/vim-phoenix'


" code navigation
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gabesoft/vim-ags'
Plugin 'valloric/youcompleteme'
Plugin 'szw/vim-tags'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-syntastic/syntastic'
Plugin 'myint/syntastic-extras'



" git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'


" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leshill/vim-json'


call vundle#end()
filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized
set number
set showcmd

set splitbelow
set splitright
set guioptions=
set macligatures
set guifont=Fira\ Code:h14
let macvim_skip_colorscheme=1
set incsearch
set hlsearch


" REMAP KEYS
" remap leader
let mapleader = ","
map <leader>n :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagsGenerate<CR>
nmap <F5> :MerginalToggle<CR>


let g:multi_cursor_start_key='<F6>'



noremap <Leader>a :Ags<cr>

" map C-w j to C-j etc
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" PLUGIN SETINGS
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:solarized_termcolors=256
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0



let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0





" v select char
" V select line
" y copy
" d cut
" p paste after
" P paste before
"
" :sp horizontal split
" :vsp virtical split
" :sp [file name]
" C-[j|k||l|h] navigate panes
" g t next tab
" g T previous tab

" NERDTREE
" t open in new tab
" i open in split
" i opne in horivontal split
" s open in v split
" C make directory the project root
"
"
" CtrlP
" C-p Ctlr-p file search
"
"
" Find / Replace
" :%s/foo/bar/g
" Find foo and replace with bar
"
"
" MATCH!!
" Highlight if the line length is greater then 80
:match ErrorMsg /\%>80v.\+/

:set spell
:set spellsuggest=5
" 
