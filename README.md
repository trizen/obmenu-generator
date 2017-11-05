obmenu-generator
================

A fast pipe/static menu generator for the Openbox Window Manager, with support for icons.

![obmenu-generator](https://4.bp.blogspot.com/-7gD5UA2gno0/WcO6o1NGQWI/AAAAAAAAmxc/JtAnLNCyVcANz29zMmpKzywY6pk9NYiUwCLcBGAs/s1600/2017-09-21-161043_1920x1080_scrot.png)

---

```
usage: obmenu-generator [options]

menu:
    -p         : generate a dynamic menu (pipe)
    -s         : generate a static menu
    -i         : include icons
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
    -h         : print this message and exit
    -v         : print version and exit

examples:
        obmenu-generator -p -i     # dynamic menu with icons
        obmenu-generator -s -c     # static menu without icons
```

* <b>Config file:</b> `~/.config/obmenu-generator/config.pl`
* <b>Schema file:</b> `~/.config/obmenu-generator/schema.pl`

---

Installation: [INSTALL.md](INSTALL.md)
