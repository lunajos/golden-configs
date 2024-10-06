set number
set relativenumber
set tabstop=2
set expandtab
set completeopt=menu,menuone,noselect

execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd VimEnter * NERDTree | wincmd p
noremap  <leader>q :qa!<CR>
nnoremap <leader>t :tabp<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>N :NERDTreeFocus<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-n> :tabp<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * botright terminal
autocmd VimEnter * resize 17
autocmd TabNew * NERDTree
autocmd TabNew * botright terminal
autocmd TabNew * resize 17

" Floaterm 
"silent! autocmd VimEnter *  FloatermNew --height=0.3
nnoremap   <silent>   <F6>    :FloatermSend<CR>
tnoremap   <silent>   <F6>    <C-\><C-n>:FloatermSend<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>:
" Enable file type detection

" General Settings (Optional)
set shiftwidth=2       " Set indent width to 4 spaces
set softtabstop=2       " Make backspace behave as expected
set wildmenu            " Enable command-line completion menu

" Python-specific abbreviations and autocomplete
autocmd FileType python inoreabbrev def def <esc>A():<esc>O
autocmd FileType python inoreabbrev imp import
autocmd FileType python inoreabbrev prin print()
autocmd FileType python inoreabbrev ret return
autocmd FileType python inoreabbrev cls class
autocmd FileType python setlocal omnifunc=syntaxcomplete#Complete

" HTML-specific abbreviations and autocomplete
autocmd FileType html inoreabbrev html5 <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title></title><CR></head><CR><body><CR></body><CR></html>
autocmd FileType html inoreabbrev h1 <h1></h1><left><left><left><left>
autocmd FileType html inoreabbrev h2 <h2></h2><left><left><left><left>
autocmd FileType html inoreabbrev img <img src="" alt=""><left><left><left><left>
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags

" Markdown-specific abbreviations and autocompletion
autocmd FileType markdown inoreabbrev bold **<strong text>**<esc>F<strong>
autocmd FileType markdown inoreabbrev ital *<emphasized>*<esc>F*<right>
autocmd FileType markdown inoreabbrev link [link text](URL)<esc>F(URL)
autocmd FileType markdown setlocal omnifunc=markdowncomplete#Complete

" JavaScript-specific abbreviations and autocompletion
autocmd FileType javascript inoreabbrev func function
autocmd FileType javascript inoreabbrev cl console.log()
autocmd FileType javascript inoreabbrev cons const
autocmd FileType javascript inoreabbrev let let
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" C/C++ specific abbreviations and autocompletion
autocmd FileType c,cpp inoreabbrev inc #include 
autocmd FileType c,cpp inoreabbrev main int main() {<CR>}<ESC>O
autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete

" LaTeX-specific abbreviations and autocompletion
autocmd FileType tex inoreabbrev sec \section{}
autocmd FileType tex inoreabbrev bf \textbf{}
autocmd FileType tex inoreabbrev it \textit{}
autocmd FileType tex setlocal omnifunc=texcomplete#Complete

" Bash-specific abbreviations and autocompletion
autocmd FileType sh inoreabbrev #! #!/usr/bin/bash
autocmd FileType sh inoreabbrev for for i in $(seq 1 10); do<CR>done<esc>O
autocmd FileType sh inoreabbrev while while [ condition ]; do<CR>done<ESC>O
autocmd FileType sh inoreabbrev if if [ condition ]; then<CR>fi<ESC>O
autocmd FileType sh inoreabbrev elif elif [ condition ]; then<CR>
autocmd FileType sh inoreabbrev fn function <C-R>=expand("<cword>")<CR>() {<CR>}<Esc>O
autocmd FileType sh inoreabbrev case case $var in<CR>pattern1)<CR># commands<CR>;;<CR>pattern2)<CR># commands<CR>;;<CR>esac<ESC>O
autocmd FileType sh inoreabbrev echo echo ""
autocmd FileType sh inoreabbrev read read -p "Enter value: " var
autocmd FileType sh inoreabbrev exp export
autocmd FileType sh setlocal omnifunc=bashcomplete#Complete

" Lua-specific abbreviations and autocompletion
autocmd FileType lua inoreabbrev func function
autocmd FileType lua inoreabbrev local local 
autocmd FileType lua inoreabbrev print print("")
autocmd FileType lua inoreabbrev req require
autocmd FileType lua inoreabbrev ret return
autocmd FileType lua setlocal omnifunc=luacomplete#Complete

" Turn on relative line numbers only for programming files
autocmd FileType python,cpp,html,javascript,lua,sh set relativenumber

