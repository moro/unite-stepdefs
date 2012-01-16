# unite-stepdefs

## NOT WORKS YET !!

This [feature request]( https://github.com/moro/cucumber/commit/e94e76d05febec5500ecf4cf6e8548eb130b61dc) is required to work this plugin.  I'll send a pull-request soon.

## Introduction

unite-stepdefs is a [unite.vim](https://github.com/Shougo/unite.vim)'s source.

This source enables you to glance a index of your step definitions, jump to the stepdef, paste stepdef to feature file.

## Install

Install the distributed files into your Vim script directory which is usually $HOME/.vim, or $HOME/vimfiles on Windows.

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


