local Mod = 'SUPER'

local browser = 'librewolf'
local browser2 = 'trivalent'
local email = 'thunderbird'
local file_manager = 'yazi'
local game = 'steam'
local game2 = 'lutris'
local image_editor = 'gimp'
local image_editor2 = 'inkscape'
local menu = 'hyprlauncher'
local music = 'spotify-launcher'
local music2 = 'lmms'
local terminal = 'foot'
local virtual_machine = 'virt-manager'

-- Chat clients
local discord = 'discord'
local matrix = 'element-desktop-nightly'
local telegram = 'Telegram'

-- Global
hl.bind(Mod .. ' + Backspace', hl.dsp.exec_cmd 'hyprctl reload')
hl.bind(Mod .. ' + F', hl.dsp.window.fullscreen { action = 'toggle' })
hl.bind(Mod .. ' + P', hl.dsp.window.pin())
hl.bind(Mod .. ' + Q', hl.dsp.window.close())
hl.bind(Mod .. ' + Escape', hl.dsp.exec_cmd 'uwsm app hyprlock')

hl.bind(Mod .. ' + SHIFT + E', hl.dsp.exec_cmd 'uwsm stop') -- Exit hyprland
hl.bind(Mod .. ' + SHIFT + F', hl.dsp.window.float())
hl.bind(Mod .. ' + SHIFT + P', hl.dsp.exec_cmd 'bream setbg')

-- Screenshot and screen record
hl.bind('Print', hl.dsp.exec_cmd 'uwsm app -- focal image --rofi')
hl.bind('SHIFT + Print', hl.dsp.exec_cmd 'uwsm app -- focal video --rofi')

-- Launcher
hl.bind(Mod .. ' + C', hl.dsp.exec_cmd('uwsm app -- ' .. matrix))
hl.bind(Mod .. ' + D', hl.dsp.exec_cmd('uwsm app -- ' .. discord))
hl.bind(Mod .. ' + E', hl.dsp.exec_cmd('uwsm app -- ' .. email))
hl.bind(Mod .. ' + G', hl.dsp.exec_cmd('uwsm app -- ' .. game))
hl.bind(Mod .. ' + I', hl.dsp.exec_cmd('uwsm app -- ' .. image_editor))
hl.bind(Mod .. ' + M', hl.dsp.exec_cmd('uwsm app -- ' .. music))
hl.bind(Mod .. ' + R', hl.dsp.exec_cmd('uwsm app -- ' .. menu))
hl.bind(Mod .. ' + V', hl.dsp.exec_cmd('uwsm app -- ' .. virtual_machine))
hl.bind(Mod .. ' + W', hl.dsp.exec_cmd('uwsm app -- ' .. browser))
hl.bind(Mod .. ' + Return', hl.dsp.exec_cmd('uwsm app -- ' .. terminal))

hl.bind(Mod .. ' + SHIFT + C', hl.dsp.exec_cmd('uwsm app -- ' .. telegram))
hl.bind(Mod .. ' + SHIFT + G', hl.dsp.exec_cmd('uwsm app -- ' .. game2))
hl.bind(Mod .. ' + SHIFT + I', hl.dsp.exec_cmd('uwsm app -- ' .. image_editor2))
hl.bind(Mod .. ' + SHIFT + W', hl.dsp.exec_cmd('uwsm app -- ' .. browser2))

-- Lazy re-creation of awesomeWM help popup
hl.bind(Mod .. ' + F1', hl.dsp.exec_cmd('uwsm app -- ' .. terminal .. ' -e nvim -R ~/.config/hypr/binds.lua'))
hl.bind(Mod .. ' + SHIFT + slash', hl.dsp.exec_cmd('uwsm app -- ' .. terminal .. ' -e nvim -R ~/.config/hypr/binds.lua'))

-- Focus and move windows within workspace
hl.bind(Mod .. ' + H', hl.dsp.focus { direction = 'left' })
hl.bind(Mod .. ' + J', hl.dsp.window.cycle_next { next = false })
hl.bind(Mod .. ' + K', hl.dsp.window.cycle_next())
hl.bind(Mod .. ' + L', hl.dsp.focus { direction = 'right' })

-- swapping next and prev doesn't work for some reason
hl.bind(Mod .. ' + SHIFT + H', hl.dsp.window.swap { direction = 'left' })
hl.bind(Mod .. ' + SHIFT + J', hl.dsp.window.swap { direction = 'down' })
hl.bind(Mod .. ' + SHIFT + K', hl.dsp.window.swap { direction = 'up' })
hl.bind(Mod .. ' + SHIFT + L', hl.dsp.window.swap { direction = 'right' })

for i = 1, 10 do
  local key = i % 10 -- 10 maps to 0
  hl.bind(Mod .. ' + ' .. key, hl.dsp.focus { workspace = i })
  hl.bind(Mod .. ' + SHIFT + ' .. key, hl.dsp.window.move { workspace = i })
end

-- Scroll through existing workspaces with Mod + scroll
hl.bind(Mod .. ' + mouse_down', hl.dsp.focus { workspace = 'e+1' })
hl.bind(Mod .. ' + mouse_up', hl.dsp.focus { workspace = 'e-1' })

-- Move/resize windows with Mod + LMB/RMB and dragging
hl.bind(Mod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(Mod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })

-- Multimedia keys for volume and LCD brightness
hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd 'wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+', { locked = true, repeating = true })
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-', { locked = true, repeating = true })

hl.bind('XF86AudioMute', hl.dsp.exec_cmd 'wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle', { locked = true })
hl.bind('XF86AudioMicMute', hl.dsp.exec_cmd 'wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle', { locked = true })

hl.bind('XF86MonBrightnessUp', hl.dsp.exec_cmd 'brightnessctl -e4 -n2 set 5%+', { locked = true, repeating = true })
hl.bind('XF86MonBrightnessDown', hl.dsp.exec_cmd 'brightnessctl -e4 -n2 set 5%-', { locked = true, repeating = true })

-- Media control - requires playerctl
hl.bind('XF86AudioNext', hl.dsp.exec_cmd 'playerctl next', { locked = true })
hl.bind('XF86AudioPause', hl.dsp.exec_cmd 'playerctl play-pause', { locked = true })
hl.bind('XF86AudioPlay', hl.dsp.exec_cmd 'playerctl play-pause', { locked = true })
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd 'playerctl previous', { locked = true })
