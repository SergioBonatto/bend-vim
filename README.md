# Bend-vim
Syntax file highlight for Kind

## Installation

### On NeoVim
Clone this repo and past the file "bend.vim" into `~/.config/nvim/syntax/bend.vim` and add in your `init.vim` file the next line:

#### On NeoVim
Clone this repo and past the folder "syntax" into `~/.config/nvim/` and add in your `init.vim` file the next line:

### On VIM
Clone this repo and past the file "bend.vim" into `~/.vim/syntax/bend.vim` and add in your `.vimrc` file the next line:

```vim
au BufRead,BufNewFile *.bend set filetype=bend
au BufNewFile,BufRead *.bend set syntax  =bend
```

## Preview
![print](./Print.png)

