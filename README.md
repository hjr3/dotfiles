# dotfiles

## Installation

In order to install, do the following:

```bash
cd $HOME
git init
git remote add origin git@github.com:hjr3/dotfiles.git
git fetch origin
git reset --hard origin/main
```

## Neovim Package Management

Packages are managed using [Paq](https://github.com/savq/paq-nvim).

To install, source your configuration using `:source %` and run `:PaqInstall`.
