Goldielocs
=====
v1.0.1

A simple directory bookmarking utility for interactive shells.

Tested with:
bash
zsh
rc


Example Usage:
-----

Store a directory and come back to it later.
```
% cd /some/path/which/is/irritating/to/type/often
% go add somename
Stored /some/path/which/is/irritating/to/type/often as somename
```

... time passes ...

```
% go to somename
New Location: /some/path/which/is/irritating/to/type/often
% pwd
/some/path/which/is/irritating/to/type/often
```

Quick Install (for bash):
-----

The following bit is the fast install,
for folks who don't want the hows or whys.

This assumes /usr/local/bin/ is in your PATH.

```
sudo make install
echo 'go() { eval $(goldielocs "$*"); }' >> $HOME/.bashrc
source $HOME/.bashrc
```

Installation:
-----

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
goldielocs() { eval $($HOME/bin/goldielocs "$*"); }
```

For rc:
```
fn goldielocs { eval `{$home/bin/goldielocs $*}}
```

Tips n' all
-----

* A handy alias for the quick go to:
    * for zsh or bash: alias 2="goldielocs to"
    * for rc: fn 2 { goldielocs to $* }
* To use the edit command with rc, try setting EDITOR = plumb (assuming you have a plumber running)
