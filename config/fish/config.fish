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
set FZF_DEFAULT_OPTS "--layout=reverse --height 40%"

# tell xz to use all threads
set XZ_DEFAULTS "-T 0"

# Shortcut abbreviations
abbr bb byobu
abbr dicheck "rsync -havn . /dev/shm --exclude-from .dockerignore"
abbr drm "docker rm -vf (docker ps -aq)"
abbr drmi "docker rmi -f (docker images -aq)"
abbr drmv "docker volume rm (docker volume ls -q)"
abbr glow "clear && glow"
abbr jf "sudo journalctl -f"
abbr ka killall
abbr mkd "mkdir -pv"
abbr n "NNN_TERMINAL='alacritty' NNN_FIFO=/tmp/nnn.fifo NNN_PLUG='f:preview-tui' nnn -P f"
abbr orphans "paru -Qdtq | yay -Rns -"
abbr packages "paru -Qqe"
abbr push "rsync -avzP"
abbr t "tree -L"
abbr v "nvim ."
abbr vd deactivate
abbr vim nvim
abbr vimdiff "nvim -d"
abbr vs "source bin/activate"
abbr x exit

# # Add verbosity
abbr cp "cp -iv"
abbr mv "mv -iv"
abbr rm "rm -vI"

# Start X at login
if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
end
