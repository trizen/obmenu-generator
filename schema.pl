#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    raw:       any valid Openbox XML string               {raw => q(xml string)},
    begin_cat: begin of a category                  {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                      {end_cat => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [
    #          COMMAND                 LABEL                ICON
    {item => ['xdg-open .',        'File Manager',      'file-manager']},
    {item => ['xterm',             'Terminal',          'terminal']},
    {item => ['xdg-open http:',    'Web Browser',       'web-browser']},
    {item => ['gmrun',             'Run command',       'system-run']},
    {item => ['pidgin',            'Instant messaging', 'system-users']},

    {sep => 'Applications'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #            COMMAND     LABEL        ICON
    #{pipe => ['obbrowser', 'Disk', 'drive-harddisk']},

    ## Generic advanced settings
    #{sep       => undef},
    #{obgenmenu => ['Openbox Settings', 'applications-engineering']},
    #{sep       => undef},

    ## Custom advanced settings
    {sep => undef},
    {begin_cat => ['Advanced Settings', 'gnome-settings']},

        # Configuration files
        {item      => ["$editor ~/.conkyrc",              'Conky RC',    $editor]},
        {item      => ["$editor ~/.config/tint2/tint2rc", 'Tint2 Panel', $editor]},

        # obmenu-generator category
        {begin_cat => ['Obmenu-Generator', 'menu-editor']},
            {item      => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', $editor]},
            {item      => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', $editor]},

            {sep  => undef},
            {item => ['obmenu-generator -p',    'Generate a pipe menu',              'menu-editor']},
            {item => ['obmenu-generator -s',    'Generate a static menu',            'menu-editor']},
            {item => ['obmenu-generator -p -i', 'Generate a pipe menu with icons',   'menu-editor']},
            {item => ['obmenu-generator -s -i', 'Generate a static menu with icons', 'menu-editor']},
            {sep  => undef},

            {item    => ['obmenu-generator -d', 'Refresh Icon Set', 'gtk-refresh']},
        {end_cat => undef},

        # Openbox category
        {begin_cat => ['Openbox', 'openbox']},
            {item      => ['openbox --reconfigure',               'Reconfigure Openbox', 'openbox']},
            {item      => ["$editor ~/.config/openbox/autostart", 'Openbox Autostart',    $editor]},
            {item      => ["$editor ~/.config/openbox/rc.xml",    'Openbox RC',           $editor]},
            {item      => ["$editor ~/.config/openbox/menu.xml",  'Openbox Menu',         $editor]},
        {end_cat => undef},

        # Pacman category
        {begin_cat => ['Pacman / Servers', 'package-manager-icon']},
            {item      => ["gksu $editor /etc/makepkg.conf",        'Makepkg Config',    'start-here']},
            {item      => ["gksu $editor /etc/pacman.conf",         'Pacman Config',     'start-here']},
            {item      => ["gksu $editor /etc/pacman.d/mirrorlist", 'Pacman Mirrorlist', 'start-here']},
        {end_cat => undef},
    {end_cat => undef},
    {sep => undef},

    ## The xscreensaver lock command
    {item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default Openbox's action "Exit"
    {exit => ['Exit', 'exit']},
]
