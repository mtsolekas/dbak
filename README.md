# dbak

dbak is bash script that automatically performs the specified backups
in the configuration file, using rsync. For more information about where this
file should be located and how to write it, as well as dbak's
available options, see the manpage.

## Install

Either copy the script and the manpage somewhere in your path and
manpath respectively, or use the provided install script which will
install both under /usr/local/bin and /usr/local/share/man/man1/ by
running:
- sudo ./install

If you wish to install under a different prefix, provided you have
the required rights, provide it as an argument, like so:
- ./install "path/to/my/dir"

## Uninstall

In complete parallel to install, run:
- sudo ./uninstall
or, if you installed under a different prefix
- ./uninstall "path/to/my/dir"

## Example

An example configuration file under $HOME/.config/dbak.conf could
look like the one below and all that's left to do is run dbak. The
trailing slashes are optional and just help to diferentiate what is
a directory and what is not to the user.

```
# Destination directory
/media/nick/ExternalHDD/BackupDir/

# A configuration file
/home/nick/.bashrc

# A directory containing pictures
/home/nick/Pictures/
```
