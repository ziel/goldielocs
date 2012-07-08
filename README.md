```
-------------------------------------------------------------------------------
>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<
-------------------------------------------------------------------------------

  _____     __   ___     __
 / ___/__  / /__/ (_)__ / /__  _______
/ (_ / _ \/ / _  / / -_) / _ \/ __(_-<
\___/\___/_/\_,_/_/\__/_/\___/\__/___/


-------------------------------------------------------------------------------
>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<#>%<
-------------------------------------------------------------------------------

A simple directory bookmarking utility for interactive shells.

Tested with:
bash
zsh
rc


-------------------------------------------------------------------------------
Example Usage:
-------------------------------------------------------------------------------

Store a directory and come back to it later.
% cd /some/path/which/is/irritating/to/type/often
% go add somename
Stored /some/path/which/is/irritating/to/type/often as somename

... time passes ...

% go to somename
New Location: /some/path/which/is/irritating/to/type/often
% pwd
/some/path/which/is/irritating/to/type/often


-------------------------------------------------------------------------------
Quick Install (for bash):
-------------------------------------------------------------------------------

The following bit is the fast install,
for folks who don't want the hows or whys.

This assumes /usr/local/bin/ is in your PATH.

sudo make install
echo 'go() { eval $(goldielocs "$*"); }' >> $HOME/.bashrc
source $HOME/.bashrc


-------------------------------------------------------------------------------
Installation:
-------------------------------------------------------------------------------

The script and man page can be installed via make as follows:

  make install
  Installs into /usr/local/* by default

  One can specify alternate directories with:
  make install INSTALLDIR=/path/to/directory

  Example:
  make install INSTALLDIR=$HOME

  installs to $HOME/bin and $HOME/man

Goldielocs requires a shell function for each shell which
will be using it.

For bash or zsh:
  go() { eval $(goldielocs "$*"); }

For rc:
  fn go { eval `{goldielocs $*}}

```
