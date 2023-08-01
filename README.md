# dotfiles
> personal config files

## Host Setup
[Reference](https://www.atlassian.com/git/tutorials/dotfiles)
1. create directory (I chose `~/work/dotfiles`) and `cd` into it
1. `git init --bare`
1. add `alias config='/usr/bin/git --git-dir=$HOME/work/dotfiles/ --work-tree=$HOME'` to `.bashrc` (replace the directory to match yours)
1. add `__git_complete config __git_main` to `.bashrc` for bash completion
1. reload bash and `config config status.showUntrackedFiles no`

## Usage
- Use the `config` alias like git (ex: `config add .bashrc`)
- Keep in mind that base directory is `$HOME`

## Client Setup
Simply clone this repo as you normally would and manually move the files to where they should be.
