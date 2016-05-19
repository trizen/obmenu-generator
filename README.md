obmenu-generator
================

A fast pipe/static menu generator for the Openbox Window Manager, with support for icons.

---

```
usage: obmenu-generator [options]

options:
    -p         : (re)generate a pipe menu
    -s         : (re)generate a static menu
    -i         : include icons in menus
    -m <id>    : menu id (default: 'root-menu')
    -t <label> : menu label text (default: 'Applications')

other:
    -S <file>  : path to the schema.pl file
    -C <file>  : path to the config.pl file
    -o <file>  : path to the menu.xml file
    -u         : update the config file
    -r         : regenerate the config file
    -d         : regenerate icons.db
    -c         : reconfigure openbox automatically
    -R         : reconfigure openbox and exit

Help:
    -h  : print this message and exit
    -v  : print version and exit

Examples:
   ** Static menu without icons:
        obmenu-generator -s -c

   ** Dynamic menu with icons:
        obmenu-generator -p -i
```

* <b>Config file:</b> `~/.config/obmenu-generator/config.pl`
* <b>Schema file:</b> `~/.config/obmenu-generator/schema.pl`

---

Installation: [INSTALL.md](INSTALL.md)
