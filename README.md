# dbak

dbak is bash script that automatically performs the specified backups
in the configuration file, using rsync or borg. For more information about where this
file should be located and how to write it, as well as dbak's
available options, see the manpage.

## Install

Running the below command will install both executable and manpage
under /usr/local/bin and /usr/local/share/man/man1/:
- sudo make install

If you wish to install under a different prefix, provided you have
the required rights, provide it as an argument, like so:
- make PREFIX="path/to/my/dir" install

## Uninstall

In complete parallel to install, run:
- sudo make uninstall
or, if you installed under a different prefix
- make PREFIX="path/to/my/dir" uninstall

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
