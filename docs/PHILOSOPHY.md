# PHILOSOPHY

> Philosophical stuff about this dotfiles structure, decisions, etc..

## Why? - Carlos Becker

I was a little tired of having long alias files and everything strewn about
(which is extremely common on other dotfiles projects, too). That led to this
project being much more topic-centric. I realized I could split a lot of things
up into the main areas I used (Ruby, git, system libraries, and so on), so I
structured the project accordingly.

You can also [read my post on the subject](http://carlosbecker.com/posts/dotfiles-are-meant-to-be-forked).

## Decisions

### Do not install a lot of software

This repo is meant to contain only configs, and another handles only software
installation.

If you want to see what I install on my mac, check
[this repo](https://github.com/emroch/macos).

### Default `EDITOR`, `VEDITOR`, etc.

`VEDITOR` stands for "visual editor", and is set to `atom` by default. `EDITOR`
is set to `vim`.

You can change that by adding your custom overrides in `~/.localrc`.

### Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Erlang" — you can simply add a `erlang` directory and
put files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

### Naming conventions

There are a few special files in the hierarchy:

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **topic/install.sh**: Any file with this name and with exec permission, will
ran at `bootstrap` and `dot_update` phase, and are expected to install plugins,
and stuff like that.

### ZSH plugins

This project uses [Antibody][antibody] to manage plugins, similar to Oh-My-Zsh.
Plugins to be loaded are defined in [this file](/antibody/bundles.txt) and
are loaded automatically when `script/install` is run (also on `dot_update`).

[antibody]: https://github.com/caarlos0/antibody

### Compatibility

I try to keep it working in both Linux (no specific distro) and macOS,
mostly because I use macOS at home and Linux at work.

The CI also is also run on Linux and macOS.
