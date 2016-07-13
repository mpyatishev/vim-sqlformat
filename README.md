# vim-sqlformat

Simple plugin for formatting SQL using sqlparse.

Inspired by https://github.com/chaosong/orz-scripts/tree/master/vim-sql-formatter

## Requirements

python, sqlparse, vim with python or neovim

## Installation
```
sudo pip install sqlparse
```

Include line to your .vimrc:
```
NeoBundle 'mpyatishev/vim-sqlformat'
```

## Using

Plugin sets `formatexpr` for filetype `sql`, so just use `gq` for format SQL.
