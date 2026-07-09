-- Load theme
dofile(os.getenv 'HOME' .. '/.cache/wal/colors-hyprland.lua')

require 'animations'
require 'binds'
require 'input'
require 'rules'
require 'zoom'

-- Monitors
-- TODO: Make this requirement optional
require 'monitors'
hl.monitor {
  output = '',
  mode = 'preferred',
  position = 'auto',
  scale = 1,
}

hl.on('hyprland.start', function()
  hl.exec_cmd 'uwsm app -- awww-daemon'
  hl.exec_cmd 'uwsm app -- waybar'
  hl.exec_cmd 'uwsm app -- wl-clip-persist --clipboard regular'
  hl.exec_cmd 'uwsm app -- wl-paste --type image --watch cliphist store'
  hl.exec_cmd 'uwsm app -- wl-paste --type text --watch cliphist store'
  hl.exec_cmd 'uwsm app -- awww img "$(cat ~./cache/wal/wal)"'
end)

hl.env('ELECTRON_OZONE_PLATFORM_HINT', 'auto')
hl.env('HYPRCURSOR_SIZE', '24')
hl.env('XCURSOR_SIZE', '24')

hl.config {
  general = {
    allow_tearing = false,
    border_size = 2,
    gaps_in = 5,
    gaps_out = 10,
    layout = 'master',
    resize_on_border = false,

    col = {
      active_border = { colors = { 'rgba(' .. color14 .. 'ee)', 'rgba(' .. color6 .. 'ee)' }, angle = 45 },
      inactive_border = { colors = { 'rgba(' .. color9 .. 'ee)', 'rgba(' .. color1 .. 'ee)' }, angle = 45 },
    },
  },

  decoration = {
    rounding = 5,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled = true,
      range = 40,
      render_power = 4,
      color = 'rgba(' .. background .. 'ee)',
    },

    blur = {
      enabled = true,
      size = 3,
      passes = 1,
      vibrancy = 0.1696,
    },
  },

  master = {
    new_status = 'master',
    new_on_top = true,
  },

  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
  },
}
