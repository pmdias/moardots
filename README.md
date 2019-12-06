My very own personal dots.

# Vim

## Plugins

* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-surround](https://github.com/tpope/vim-surround)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [tabular](https://github.com/godlygeek/tabular)
* [vim-vue](https://github.com/posva/vim-vue)
* [vim-glsl](https://github.com/tikhomirov/vim-glsl)
* [vim-meson](https://github.com/matze/vim-meson)

## Misc

Set 2 sized indentation on specific files

```
$ cd $HOME/.vim/after/ftplugin/
$ printf "setlocal shiftwidth=2\nsetlocal tabstop=2\n" | tee -a html.vim javascript.vim scss.vim yaml.vim
```

Set correct tab formating for makefile

```
$ cd $HOME/.vim/after/ftplugin/
$ printf "setlocal noexpandtab" | tee -a make.vim
```

