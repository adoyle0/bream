# B.R.E.A.M. (Bash Rules Everything Around Me)

This is my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

I try to use the terminal as much as possible both for performance (I use old hardware) and so it's the same experience whether you're hands-on or remote. If it's not here then you probably don't need it

This started as a script for quick deployment of some tools when connected to a remote system and then evolved into including the rest(almost) of my environment and configs as well. Now it's how I store and sync configs between my different systems and bootstrap a fresh install

You can try it yourself if you like, on top of any Arch installation (maybe anything that uses pacman)

## Features

### Base Shell

The meat and potatoes

| Package                                                              | Description                                                                                                              |
| -------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [atool](https://www.nongnu.org/atool)                                | For working with archives, used by other programs like nnn                                                               |
| [archlinux-contrib](https://github.com/archlinux/contrib)            | Handy scripts for system maintenance                                                                                     |
| [bat](https://github.com/sharkdp/bat)                                | Better cat for quickly viewing files                                                                                     |
| [btop](https://github.com/aristocratos/btop)                         | Top++                                                                                                                    |
| [byobu](https://www.byobu.org/)                                      | Comfy multiplexer                                                                                                        |
| [cargo-binstall](https://github.com/cargo-bins/cargo-binstall)       | Installs binary versions of crates instead of having to build everything saving CPU time                                 |
| [coreutils](https://www.gnu.org/software/coreutils/)                 | Basic file, shell, and text manipulation utilities                                                                       |
| [fd](https://github.com/sharkdp/fd)                                  | Alternative to find, used by bat and made by the same guy                                                                |
| [fish](https://fishshell.com/)                                       | Fish shell because fish name                                                                                             |
| [fzf](https://github.com/junegunn/fzf)                               | Fuzzy finder also used by telescope(nvim plugin)                                                                         |
| [git](https://git-scm.com/)                                          | Version control system                                                                                                   |
| [glow](https://github.com/charmbracelet/glow)                        | Command-line markdown renderer                                                                                           |
| [leptosfmt](https://github.com/bram209/leptosfmt)                    | Formatter for [leptos](https://github.com/leptos-rs/leptos). This has to be included here or it breaks the neovim config |
| [man-db](https://man-db.nongnu.org/)                                 | To RTFM                                                                                                                  |
| [mold](https://github.com/rui314/mold)                               | A much faster linker                                                                                                     |
| [mosh](https://mosh.org/)                                            | MObile SHell, like ssh but better with a bad connection                                                                  |
| [neovim](https://github.com/neovim/neovim)                           | Edit text blazingly fast (even over ssh!)                                                                                |
| [nnn](https://github.com/jarun/nnn)                                  | Lightning fast file manager                                                                                              |
| [npm](https://www.npmjs.com/)                                        | Used by neovim/mason                                                                                                     |
| [pacman-contrib](https://gitlab.archlinux.org/pacman/pacman-contrib) | Handy scripts for system maintenance                                                                                     |
| [paru](https://github.com/Morganamilo/paru)                          | Easier to use Arch package manager that supports AUR                                                                     |
| [pkgfile](https://github.com/falconindy/pkgfile/)                    | Used by fish to look up commands when they're not found                                                                  |
| [rate-mirrors](https://github.com/westandskif/rate-mirrors)          | Arch mirror ranking tool                                                                                                 |
| [ripgrep](https://github.com/BurntSushi/ripgrep)                     | Extremely fast grep replacement                                                                                          |
| [rsync](https://rsync.samba.org/)                                    | For my 'push' alias                                                                                                      |
| [rubygems](https://rubygems.org/)                                    | Used by neovim/mason                                                                                                     |
| [sl](https://github.com/eyJhb/sl)                                    | For when you're too fast                                                                                                 |
| [tree](https://gitlab.com/OldManProgrammer/unix-tree)                | Lists directories to a specified depth                                                                                   |
| [tar](https://www.gnu.org/software/tar/)                             | For working with tar archives                                                                                            |
| [unrar](https://www.rarlab.com/rar_add.htm)                          | For extracting rar archives                                                                                              |
| [unzip](http://infozip.sourceforge.net/UnZip.html)                   | For extracting zip archives                                                                                              |
| [wget](https://www.gnu.org/software/wget/wget.html)                  | Tool to get things from the web                                                                                          |

### GUI

AwesomeWM starter kit

| Package                                                                   | Description                                                     |
| ------------------------------------------------------------------------- | --------------------------------------------------------------- |
| [acpi](https://wiki.archlinux.org/title/ACPI_modules)                     | For battery widget                                              |
| [alacritty](https://github.com/alacritty/alacritty)                       | Terminal emulator                                               |
| [arandr](https://christian.amsuess.com/tools/arandr)                      | To configure screens                                            |
| [awesome](https://awesomewm.org/)                                         | Window manager                                                  |
| [awesome-wm-widgets](https://github.com/streetturtle/awesome-wm-widgets)  | Community collection of widgets for awesome                     |
| [bluez](https://www.bluez.org/)                                           | Bluetooth tools                                                 |
| [commit-mono-nerd](https://github.com/ryanoasis/nerd-fonts)               | .otf nerd font that also supports bold, italic, and bold italic |
| [chromium](https://www.chromium.org/Home/)                                | Backup browser                                                  |
| [font-awesome](https://fontawesome.com/)                                  | Icon font                                                       |
| [gnome-themes-extra](https://gitlab.gnome.org/Archive/gnome-themes-extra) | Provides dark GTK themes                                        |
| [librewolf](https://librewolf.net/)                                       | Main browser                                                    |
| [maim](https://github.com/naelstrof/maim)                                 | Screenshot tool                                                 |
| [noto-fonts](https://en.wikipedia.org/wiki/Noto_fonts)                    | Full coverage unicode fonts                                     |
| [nsxiv](https://nsxiv.codeberg.page/)                                     | Image viewer                                                    |
| [picom](https://github.com/yshui/picom)                                   | Compositor. Provides vsync, shadows, transparency, etc          |
| [playerctl](https://github.com/altdesktop/playerctl)                      | For controlling media playback                                  |
| [polkit-gnome](https://wiki.archlinux.org/title/Polkit)                   | GTK polkit prompt                                               |
| [python-pywalfox](https://github.com/frewacom/pywalfox)                   | Themes firefox with pywal colors                                |
| [redshift](https://github.com/jonls/redshift)                             | Shifts screen to red at night to be easier on the eyes          |
| [unclutter](https://github.com/Airblader/unclutter-xfixes)                | Hides the cursor after inactivity                               |
| [wallust](https://codeberg.org/explosion-mental/wallust)                  | Set whole system color scheme from wallpaper colors             |
| [xclip](https://github.com/astrand/xclip)                                 | Make clipboard work across programs                             |
| [xorg-server](https://wiki.archlinux.org/title/Xorg)                      | Displays graphics                                               |
| [xorg-xinit](https://wiki.archlinux.org/title/Xinit)                      | Starts the X server                                             |
| [xorg-xrandr](https://wiki.archlinux.org/title/xrandr)                    | Configures monitors                                             |
| [xwallpaper](https://github.com/stoeckmann/xwallpaper)                    | Tiny and fast wallpaper setter for X                            |
| [zathura](https://pwmt.org/projects/zathura/)                             | Minimalistic document viewer with keyboard controls             |

### Bloat

Eye candy, stuff that won't install on ARM devices. This section is more personal

| Package                                                        | Description                     |
| -------------------------------------------------------------- | ------------------------------- |
| [caprine](https://sindresorhus.com/caprine/)                   | Facebook messenger              |
| [discord](https://discord.com/)                                | Discord                         |
| [gimp](https://www.gimp.org/)                                  | Image editor                    |
| [spotify-launcher](https://github.com/kpcyrd/spotify-launcher) | Handles Spotify                 |
| [telegram-desktop](https://telegram.org/)                      | Telegram messenger              |
| [thunderbird](https://www.thunderbird.net)                     | Email client                    |
| [walogram-git](https://codeberg.org/thirtysix/walogram)        | Generate telegram-desktop theme |

## Install

To update an existing installation run `bream update`

Create a new user or back up your home directory if you're unsure about anything. If you have nothing to lose then go ahead and YOLO it. Just don't complain if something gets overwritten

1. `sh <(curl -s https://bream.doordesk.net/setup)`
1. Log out and log back in
1. ????
1. PROFIT!!!!

- The mod keys are Super, Menu, and Meta
- Once in awesome press Mod + F1 for a reference of all keybinds

## Post Install

Some manual setup is required for theming if you want eye candy.

### Pywalfox

- Install [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/) for firefox, then open it and click the "Fetch Pywal colors" button. You shouldn't have to touch it ever again

### Walogram

1. Navigate to Settings > Chat Settings and click on choose from file
1. Toggle hidden files visibility in right click menu
1. Navigate to and double click on ~/.cache/walogram/bream.tdesktop-theme file
1. Click on keep changes

## Troubleshooting

### I see a black screen after logging in

Make sure your [video drivers](https://wiki.archlinux.org/title/Xorg#Driver_installation) are set up properly.

If you're confident that your drivers are set up correctly and X is not crashing then run `ka picom` in another TTY (<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F2</kbd>), or try to blindly open a terminal (<kbd>Super</kbd> + <kbd>Enter</kbd>) and run it. If everything appears to suddenly work then picom is having an issue. Try running `picom --backend xrender -b` to load picom with software rendering. If this works then you can make the changes permanent in `~/.config/picom.conf` by changing `glx` to `xrender` however these changes will be overwritten with `bream update`. If this is an issue then [let me know about it](https://git.doordesk.net/adam/bream/issues).
