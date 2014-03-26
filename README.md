obmenu-generator
================

A fast pipe/static menu generator for the Openbox Window Manager, with support for icons.

<hr>

usage: obmenu-generator [options]

Options:

    -p  : (re)generate a pipe menu
    -s  : (re)generate a static menu
    -o  : static menu file (default: ~/.config/openbox/menu.xml)
    -m  : menu id (default: 'root-menu')
    -r  : regenerate the config files
    -i  : use icons in menus
    -d  : regenerate icons.db (with -i)
    -u  : update the config file
    -R  : reconfigure openbox


Generating a simple static menu:

    obmenu-generator -s

Generating a pipe menu with icons:

    obmenu-generator -p -i

Reconfiguring openbox:

    obmenu-generator -R

* <b>Config file:</b> ~/.config/obmenu-generator/config.pl
* <b>Schema file:</b> ~/.config/obmenu-generator/schema.pl
