# dotfiles

## Installation

### Git

```bash
cd $HOME
git init
git remote add origin git@github.com:hjr3/dotfiles.git
git fetch origin
git reset --hard origin/main
```

### Jujutsu

_Note:_ This assumes you are not trying to colocate with a git repo.

```bash
cd $HOME
jj git init
jj git remote add origin git@github.com:hjr3/dotfiles.git
jj git fetch
jj bookmark track main@origin
jj rebase -d main@origin
```

## Homebrew

A `Brewfile` exists to keep track of what packages have been installed.

Common commands:

- `brew bundle` - Install and upgrade all dependencies from the Brewfile.
   - `brew bundle --no-upgrade` - Install only
- `brew bundle check` - check if all dependencies are installed from the Brewfile.
- `brew bundle cleanup` - uninstall all dependencies not listed from the Brewfile. 

See https://docs.brew.sh/Manpage#bundle-subcommand for full docs.
