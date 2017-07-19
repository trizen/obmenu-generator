## Installation of obmenu-generator

* Required dependencies:

    - perl>=5.14.0
    - gtk2-perl ([Gtk2](https://metacpan.org/pod/Gtk2))
    - perl-data-dump ([Data::Dump](https://metacpan.org/pod/Data::Dump))
    - perl-linux-desktopfiles>=0.09 ([Linux::DesktopFiles](https://metacpan.org/pod/Linux::DesktopFiles))

### Installation process:

- place the `obmenu-generator` file inside your PATH
- place the `schema.pl` file inside `~/.config/obmenu-generator/`

### Running:

- to generate a dynamic menu with icons, execute: `obmenu-generator -i -p`
- to generate a static menu without icons, execute: `obmenu-generator -s -c`

### Customizing:

- the `schema.pl` file provides a direct customization access for the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file, is reflected inside the generated menu.

### Packages:

- [Arch Linux](https://aur.archlinux.org/packages/obmenu-generator/)
- [Debian](https://software.opensuse.org/download.html?project=home%3AHead_on_a_Stick%3Aobmenu-generator&package=obmenu-generator)
