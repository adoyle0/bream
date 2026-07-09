# B.R.E.A.M. (Bash Rules Everything Around Me)

This is my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

I try to use the terminal as much as possible
both for performance (I use old hardware)
and so it's the same experience whether you're hands-on or remote.
If it's not here then you probably don't need it.

This started as a script
for quick deployment of some tools when connected to a remote system
and then evolved
into including the rest of my environment and configs as well.
Now it's how I store and sync configs
between my different systems and bootstrap a fresh install.

You can try it yourself if you like,
on top of any Arch installation
(maybe anything that uses pacman).

## Features

- Dark mode is enabled by default
- Nerd fonts are used by default
- Many common tasks have shortcuts or keybindings
- Custom `bream` tool

Here are some highlights separated into tiers:

### Base Shell

The meat and potatoes

| Package                                                     | Description                                             |
| ----------------------------------------------------------- | ------------------------------------------------------- |
| [archlinux-contrib](https://github.com/archlinux/contrib)   | Arch contrib scripts                                    |
| [bat](https://github.com/sharkdp/bat)                       | A cat(1) clone with wings                               |
| [btop](https://github.com/aristocratos/btop)                | Top++                                                   |
| [earlyoom](https://github.com/rfjakob/earlyoom)             | Kill memory leaking processes earlier                   |
| [fish](https://fishshell.com/)                              | Amazing shell with an amazing name                      |
| [kondo](https://github.com/tbillington/kondo)               | An awesome tool for cleaning up build artifacts         |
| [mold](https://github.com/rui314/mold)                      | A modern linker                                         |
| [mosh](https://mosh.org/)                                   | MObile SHell, like ssh but better with a bad connection |
| [neovim](https://github.com/neovim/neovim)                  | The best editor (aka `v`)                               |
| [paru](https://github.com/Morganamilo/paru)                 | Easier to use Arch package manager that supports AUR    |
| [rate-mirrors](https://github.com/westandskif/rate-mirrors) | Arch mirror ranking tool (used by `bream mirrors`)      |
| [tmux](https://github.com/tmux/tmux)                        | Terminal multiplexer                                    |
| [ufw](https://launchpad.net/ufw)                            | An uncomplicated firewall                               |
| [yazi](https://github.com/sxyazi/yazi)                      | Fast CLI file manager packed with features              |

### GUI

Hyprland starter kit

| Package                                                         | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- |
| [awww](https://codeberg.org/LGFae/awww)                         | Wallpaper tool with animations                                  |
| [dunst](https://github.com/dunst-project/dunst)                 | Lightweight and customizable notification daemon                |
| [focal](https://github.com/iynaix/focal)                        | Slick screenshot/screen recording tool                          |
| [foot](https://codeberg.org/dnkl/foot)                          | A fast, lightweight and minimalistic Wayland terminal emulator  |
| [hyprland](https://hyprland.org/)                               | Fast and great looking window manager/compositor                |
| [hyprpwcenter](https://github.com/hyprwm/hyprpwcenter)          | A GUI Pipewire control center                                   |
| [librewolf](https://librewolf.net/)                             | Main browser                                                    |
| [otf-commit-mono-nerd](https://github.com/ryanoasis/nerd-fonts) | .otf nerd font that also supports bold, italic, and bold italic |
| [otf-font-awesome](https://fontawesome.com)                     | A popular icon font                                             |
| [python-pywalfox](https://github.com/frewacom/pywalfox)         | Themes firefox with pywal colors                                |
| [trivalent](https://github.com/secureblue/Trivalent)            | Backup browser                                                  |
| [wallust](https://codeberg.org/explosion-mental/wallust)        | Set whole system color scheme from wallpaper colors             |
| [waybar](https://github.com/Alexays/Waybar)                     | Highly customizable bar for wayland                             |
| [wofi](https://github.com/SimplyCEO/wofi)                       | Fast launcher/menu program for wayland                          |
| [zathura](https://pwmt.org/projects/zathura/)                   | Minimalistic document viewer with keyboard controls             |

### Bloat

Eye candy, stuff that won't install on ARM devices.
This section is more personal.

| Package                                                                  | Description                                |
| ------------------------------------------------------------------------ | ------------------------------------------ |
| [discord_arch_electron](https://discord.com/)                            | Discord                                    |
| [element-desktop-nightly-bin](https://github.com/element-hq/element-web) | Matrix client                              |
| [gimp](https://www.gimp.org/)                                            | Image editor                               |
| [inkscape](https://www.inkscape.org/)                                    | Vector graphics editor                     |
| [telegram-desktop](https://telegram.org/)                                | Telegram messenger                         |
| [thunderbird](https://www.thunderbird.net)                               | Email client                               |
| [walogram-git](https://codeberg.org/thirtysix/walogram)                  | Generate telegram-desktop theme            |
| [yt-dlp](https://github.com/yt-dlp/yt-dlp)                               | A useful tool that does useful tool things |

## Install

The minimal base to install bream on is the archinstall minimal preset. You should select all the
fonts and set up your own audio, bluetooth, etc.

> [!NOTE]
> To update an existing installation run `bream update`.

> [!WARNING]
> Create a new user or back up your home directory if you're unsure about anything.
> If you have nothing to lose then go ahead and YOLO it.
> Just don't complain if something gets overwritten.

1. `sh <(curl -s https://bream.doordesk.net/setup)`
1. Log out and log back in
1. ????
1. PROFIT!!!!

> [!NOTE]
> The mod keys are <kbd>Super</kbd>, <kbd>Menu</kbd>, and <kbd>Meta</kbd>

## Post Install

Use <kbd>Super</kbd> + <kbd>F1</kbd> or <kbd>Super</kbd> + <kbd>?</kbd> to view all keybinds.

## Theming

Some manual setup is required for theming if you want eye candy.

### Wallpaper

If you install bream in a CLI environment, the wallpaper may not be set. If you just see a
blank background then either press <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> or run `bream setbg` manually.

### Pywalfox

1. Install [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)
   for firefox
1. Open it and click the "Fetch Pywal colors" button.
   You shouldn't have to touch it ever again.

### Walogram

1. Navigate to Settings > Chat Settings and click on choose from file
1. Toggle hidden files visibility in right click menu
1. Navigate to and double click on ~/.cache/walogram/bream.tdesktop-theme file
1. Click on keep changes
