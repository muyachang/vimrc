![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)


# The Ultimate vimrc

Over the last 10 years, I have used and tweaked Vim. This vimrc includes the plugins/key-mappings that I found to be very helpful.


## How to install this vimrc?
To install it simply do following from your terminal:

	git clone --depth=1 https://github.com/muyachang/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_vimrc.sh


## Fonts

I recommend using [IBM Plex Mono font](https://github.com/IBM/plex) (it's an open-source and awesome font that can make your code look beautiful). The Awesome vimrc is already setup to try to use it.

Some other fonts that Awesome will try to use:

* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)


## How to update to latest version?

Just do a git rebase!


    cd ~/.vim_runtime
    git reset --hard
    git clean -d --force
    git pull --rebase
    python update_plugins.py  # use python3 if python is unavailable


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

* [ack.vim](https://github.com/mileszs/ack.vim.git):
* [ale](https://github.com/dense-analysis/ale): Syntax and lint checking for vim (ALE requires NeoVim >= 0.2.0 or Vim 8 with +timers +job +channel)
* [auto-pairs]()
* [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with `<leader+o>`
* [copilot.vim](https://github.com/github/copilot.vim) Plugin for GitHub Copilot (AI autocompletion FTW 😅)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* [lightline-ale]()
* [mru.vim]()
* [nerdtree](https://github.com/preservim/nerdtree): A tree explorer plugin for vim
* [repeat]
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) Is a plugin for visually displaying indent levels in Vim
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-lastplace]()
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-surround]()
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack.git)


## Included color schemes

Type `:colorscheme <Tab>` to try out color schemes on the fly,
or change it in `~/.vim_runtime/vimrcs/basic.vim`

* [peaksea](https://github.com/vim-scripts/peaksea) - Default
* [pyte](https://github.com/therubymug/vim-pyte)


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.

For the other mappings, take a look at `vimrcs/mappings.vim`.


## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`


## Credit

This repo originated from [amix's vimrc](https://github.com/amix/vimrc), but I trimmed down some packages that I'll never use and also alter the structure a bit based on my personal preferences.

