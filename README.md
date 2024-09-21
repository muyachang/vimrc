
# Introduction

Over the last 10 years, I have used and tweaked Vim. This vimrc includes all the things I found to be useful.


## How to install?

	git clone --depth=1 https://github.com/muyachang/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_vimrc.sh


## How to uninstall?

* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`


## How to update?

### vimrc itself
To update to the latest version of this vimrc can be done through rebase, not that any changes will be lost.

    cd ~/.vim_runtime
    git reset --hard
    git clean -d --force
    git pull --rebase
	#TODO: Add line for update the plugins

### plugins
The plugins are managed through git submodule, to update the plugins, do the following

    TODO: Add how to update the plugins


## Fonts

I recommend using [IBM Plex Mono font](https://github.com/IBM/plex) (it's an open-source and awesome font that can make your code look beautiful).

Fonts that this vimrc will try to use:

* [IBM Plex Mono font](https://github.com/IBM/plex)
* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)


## Plugins

Plugins are pretty subjective, these are the ones I found to be useful. I recommend reading the docs of these plugins to understand them better and how to use them, especially their full hotkeys.

### Colorschemes

Use `:colorscheme <Tab>` to try out color schemes on the fly, or change it in `~/.vim_runtime/vimrcs/basic.vim`.

* [peaksea](https://github.com/vim-scripts/peaksea): Default color scheme

  ![peaksea](https://camo.githubusercontent.com/8ecb61871e2adb81c439d85b28124bb70c78f600156b784ea4512953a0992cee/687474703a2f2f692e696d6775722e636f6d2f3554706536536a2e6a7067)

### Decorations

* [lightline-ale](https://github.com/maximbaz/lightline-ale.git): 
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim

### Syntax

* [ale](https://github.com/dense-analysis/ale): Syntax and lint checking for vim (ALE requires NeoVim >= 0.2.0 or Vim 8 with +timers +job +channel)
* [verilog_systemverilog.vim](https://github.com/vhda/verilog_systemverilog.vim.git): Syntax for verilog & system-verilog

### Efficiency

* [ack.vim](https://github.com/mileszs/ack.vim.git):
* [bufexplorer](https://github.com/jlanzarotta/bufexplorer.git): Quickly and easily switch between buffers
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder
* [nerdtree](https://github.com/preservim/nerdtree): Explore files in tree structure
* [vim-commentary](https://github.com/tpope/vim-commentary): Help comment stuff on/off.
	* `gcc` to comment out a line (takes a count)
	* `gc` to comment out the target of a motion
	* `gcu` uncomments a set of adjacent commented lines
* [vim-easy-align](https://github.com/junegunn/vim-easy-align.git):
* [vim-perforce](https://github.com/nfvs/vim-perforce.git):
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack.git):


### Automation

* [auto-pairs](https://github.com/jiangmiao/auto-pairs.git):
* [copilot.vim](https://github.com/github/copilot.vim): GitHub Copilot
* [repeat](https://tpope.io/vim/repeat.git):
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides): Visually displaying indent levels in Vim
* [vim-lastplace](https://github.com/farmergreg/vim-lastplace.git):
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S.
* [vim-surround](https://github.com/tpope/vim-surround.git): 


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.

For other general mappings, take a look at `vimrcs/mappings.vim`.

For plugin-specific settings/mappings, take a look at `vimrcs/plugins_config.vim`.


## Credit

This repo originated from [amix's vimrc](https://github.com/amix/vimrc), but I trimmed down some packages that I'll never use and also alter the structure a bit based on my personal preferences.

