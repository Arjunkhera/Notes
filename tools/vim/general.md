1. The .vimrc is not present initially, you have to make a new one


2. The mapleader is not set initially
```
" to find your mapleader key
:echo mapleader

" to set your mapleader, for example the preferred key is ,
:set mapleader=","

```

1. Setting tabs and spaces

[stackoverflow](https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim)

here is the code to be embedded in the .vimrc file

```
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

```




