# Docker
abbr dicheck "rsync -havn . /dev/shm --exclude-from .dockerignore"
abbr drm "docker rm -vf (docker ps -aq)"
abbr drmi "docker rmi -f (docker images -aq)"
abbr drmv "docker volume rm (docker volume ls -q)"

# Git stuff
abbr ga "git add"
abbr gb "git branch"
abbr gc --set-cursor 'git commit -m "%"'
abbr gco "git checkout"
abbr gd "git diff"
abbr gp "git push"
abbr gpl "git pull"
abbr gs "git status"

# Rust stuff
abbr cgc "cargo clean"
abbr cgu "cargo update"
abbr clw "cargo leptos watch"
abbr ru "rustup update"

# Add verbosity
abbr cp "cp -iv"
abbr mv "mv -iv"
abbr rm "rm -vI"

# Admin/system stuff
abbr jf "sudo journalctl -f"
abbr orphans "paru -Qdtq | yay -Rns -"
abbr packages "paru -Qqe"
abbr push "rsync -avzP"

# Python/virtualenv
abbr vd deactivate
abbr vs "source bin/activate.fish"

# Vim
abbr v nvim
abbr vi nvim
abbr vim nvim
abbr vimdiff "nvim -d"

# Unsorted
abbr bb byobu
abbr ka killall
abbr mkd "mkdir -pv"
abbr t "tree -L"
abbr x exit

if status is-login
    # Source /etc/profile with bash
    if not set -q __sourced_profile
        set -x __sourced_profile 1
        exec bash -c "\
            test -e /etc/profile && source /etc/profile
            exec fish --login
        "
    end

    # Add cargo bin to path
    fish_add_path ~/.cargo/bin/

    # Use vi bindings
    fish_vi_key_bindings

    # Disable default greeting message
    set -U fish_greeting

    # Default programs
    set -gx BROWSER librewolf
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx PAGER "bat -p"
    set -gx TERMINAL alacritty

    # Make fzf easier on the eyes
    set -gx FZF_DEFAULT_OPTS "--layout=reverse --height 40%"

    # tell xz to use all threads
    set -gx XZ_DEFAULTS "-T 0"

    # Start hyprland at login
    if test -e /usr/bin/hyprland
        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
            exec uwsm start hyprland.desktop
        end
    end
end
