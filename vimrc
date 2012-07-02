let no_buffers_menu=1

" activate pathogen to control the plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" key mappings for Command-T
" finding files matching patterns
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

" load CloseTag only for specified files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" needed for pyflakes
" needed for NERDcommenter
filetype on
filetype plugin on

" remap for the Tagbar
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" solarized
set background=light
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" Make the command line two lines high and change the statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set statusline=[%l,%v\ %P%M][CWD:\ %{CWD()}][FILE:\ %f]\ %r%h%w\ (%{&ff})\%{fugitive#statusline()}\ %#warningmsg#%{SyntasticStatuslineFlag()}%*
set showcmd
set showmode
set number
function! CWD()
   let curdir = substitute(getcwd(), '/home/vlad', "~/", "g")
   return curdir
endfunction

" tabs etc.
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set backspace=indent,eol,start 
