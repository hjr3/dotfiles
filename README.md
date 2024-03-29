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

## Homebrew

A `Brewfile` exists to keep track of what packages have been installed.

Common commands:

- `brew bundle` - Install and upgrade all dependencies from the Brewfile.
   - `brew bundle --no-upgrade` - Install only
- `brew bundle check` - check if all dependencies are installed from the Brewfile.
- `brew bundle cleanup` - uninstall all dependencies not listed from the Brewfile. 

See https://docs.brew.sh/Manpage#bundle-subcommand for full docs.
