# nvim

Personal neovim configuration files.

This is my personal neovim config which I use day to day work. If you want to use my setting you can follow below steps to configure for you ;)

### Installation

> Install below required softwares to work setup properly.

Install neovim/node/python3.x > (on Mac) -> assuming you have `brew` package manager already installed.
Use `sudo` if required.

```sh
$ brew install neovim
$ brew install node
$ npm install -g neovim
$ brew install python --verbose
$ brew install fzf
$ $(brew --prefix)/opt/fzf/install
$ brew install ripgrep
$ brew install -HEAD universal-ctags/universal-ctags/universal-ctags
$ brew install the_silver_searcher
$ brew install fd
$ brew install jesseduffield/lazygit/lazygitbrew
$ brew install git-flow
$ brew install tmux
```

Install packages ...

To run python debugger pudb use below command
`pyhton -m pudb <your_python_file.py>`
```sh
$ sudo pip3 install neovim
$ sudo pip3 install pynvim
$ sudo pip3 install neovim-remote
$ sudo pip3 install tmuxp
$ sudo pip3 install pudb
$ sudo pip3 install pysnooper
```

### Clone the configuration

```sh
# make directory if not exist
$ mkdir -p ~/.config
$ git clone https://github.com/ajaymahar/nvim.git ~/.config
```

### Additional steps to follow...

`Great!` There are few more steps to configure to work setup properly.

Open your favorite `Terminal` and run these commands.

Open nvim:

```sh
$ nvim
```

Now we need to install coc-plugins `press` `SHIFT + :` and enter below commands.

```sh
: CocInstall marketplace coc-yank coc-tasks coc-stylelintplus coc-prettier coc-lists coc-fzf-preview coc-floaterm coc-explorer coc-emoji coc-emmet coc-bookmark coc-actions coc-yaml coc-vimlsp coc-tsserver coc-svg coc-sh coc-python coc-pyright coc-json coc-html coc-css coc-cssmodules coc-snippets coc-pairs coc-go
```

### Todos

- Automate the installaing steps.
- Add instructions for Other OS like (Linux, Arch)
- Make it more robust

**Any feedbacks are welcome!**

