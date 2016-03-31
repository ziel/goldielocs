Goldielocs
==========
v1.0.2

A (very) simple directory bookmarking utility for interactive shells.

Tested with:
bash
zsh


## Example Usage:

Store a directory and come back to it later.
``` % cd /some/path/which/is/irritating/to/type/often
% goldielocs add somename
Stored /some/path/which/is/irritating/to/type/often as somename
```

... time passes ...

```
% goldielocs to somename
New Location: /some/path/which/is/irritating/to/type/often
% pwd
/some/path/which/is/irritating/to/type/often
```

## Quick Install (for bash):

The following bit is the fast install,
for folks who don't want the hows or whys.

This assumes /usr/local/bin/ is in your PATH.

```
sudo make install
echo 'goldielocs() { eval $(/usr/bin/env goldielocs "$*"); }' >> $HOME/.bashrc
source $HOME/.bashrc
```

## Installation:

The script and man page can be installed via make as follows:

```
make install
Installs into /usr/local/* by default
```

One can specify alternate directories with:
```
make install INSTALLDIR=/path/to/directory
```

Example:
```
make install INSTALLDIR=$HOME
# installs to $HOME/bin and $HOME/man
```

Goldielocs requires a shell function for each shell which
will be using it.

For bash or zsh:
```
goldielocs() { eval $(/usr/bin/env goldielocs "$*"); }
```

## Tips n' all

#### Quick cd alias

A handy alias for the quick cd to for zsh or bash:

```
alias 2="goldielocs to"
```

then you can:
```
% 2 someplace
New Location: /path/to/someplace
```

#### FZF integration

If you use [fzf](https://github.com/junegunn/fzf), you can feed the goldielocs
bookmarks into it like so:
```
cat $(goldielocs file) | fzf
```

Here's an example interactive keybinding for zsh:
```
# Create a ZLE widget for goldielocs + fzf
# and bind it to ^N

fzf-goldielocs-widget() {
  local result=$(cat $(goldielocs file) | fzf | awk '{print $2}')

  if [ ! -z "${result}" ]; then
    cd "${result}"
  fi

  zle reset-prompt
}

zle -N fzf-goldielocs-widget
bindkey '^N' fzf-goldielocs-widget
```


