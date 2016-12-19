# dotfiles

The Vim config is a slightly tweaked version of [Gary Bernhardt's](https://github.com/garybernhardt/dotfiles).

## Requirements
- python + pip
- ruby
- zsh
- oh-my-zsh
- selecta

## Installation
- Install requirements listed before
- Install Python packages in requirements.txt
- Run `./install.sh`

## Other files
- `.secrets` is meant to contain secret stuff, like Homebrew API key.

## Adding Vim bundles

```
git submodule add git@github.com:quanganhdo/grb256.git .vim/bundle/grb256
git submodule init
git submodule update
```

