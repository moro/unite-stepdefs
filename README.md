# unite-stepdefs

## Introduction

unite-stepdefs is a [unite.vim](https://github.com/Shougo/unite.vim)'s source.

This source enables you to glance a index of your step definitions, jump to the stepdef, paste stepdef to feature file.
![screenshot](https://img.skitch.com/20120116-b36577iueui3x78cbf82yfbxj9.png)

## Install

Install the distributed files into your Vim script directory which is usually $HOME/.vim, or $HOME/vimfiles on Windows.

## Requirements

```
gem 'cucumber', '>= 1.1.6'
```

## Usage

To show the heading list of the current buffer, execute |:Unite| command with `stepdefs` as a source parameter.

```
:Unite stepdefs
```

unite-stepdefs uses a `stepdefs.json` output.
To generate this, add `--dotcucumber features/.cucumber` configuration to your cucumber.yml.
See [an announcement](https://groups.google.com/forum/#!topic/cukes/minS8B_s_xs) for more information.

## TODO

- configurable `stepdefs.json`'s path.


