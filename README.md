obmenu-generator
================

A fast pipe/static menu generator for the Openbox Window Manager, with support for icons.

<hr>
```
usage: obmenu-generator [options]

Options:
    -p  : (re)generate a pipe menu
    -s  : (re)generate a static menu
    -o  : static menu file (default: ~/.config/openbox/menu.xml)
    -m  : menu id (default: 'root-menu')
    -t  : menu label text (default: "Applications")
    -r  : regenerate the config file
    -i  : use icons in menus
    -d  : regenerate icons.db (with -i)
    -u  : update the config file
    -c  : reconfigure openbox automatically
    -R  : reconfigure openbox now and exit

Help:
    -h  : print this message
    -v  : print the version number

Examples:
   ** Static menu without icons:
        obmenu-generator -s -c

   ** Dynamic menu with icons:
        obmenu-generator -p -i
```
* <b>Config file:</b> ~/.config/obmenu-generator/config.pl
* <b>Schema file:</b> ~/.config/obmenu-generator/schema.pl
