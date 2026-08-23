local mainMod = "SUPER"

--Application

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("fuzzel"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("foot -e yazi"))


--window management 

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle"}))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

--vim-style focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "l"}))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "d"}))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "u"}))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "r"}))

--vim-style window movement
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l"}))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d"}))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u"}))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r"}))

--workspaces
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1}))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2}))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3}))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4}))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5}))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6}))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7}))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8}))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9}))

--Move window to workspace
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.focus({ workspace = 1}))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.focus({ workspace = 2}))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.focus({ workspace = 3}))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.focus({ workspace = 4}))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.focus({ workspace = 5}))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.focus({ workspace = 6}))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.focus({ workspace = 7}))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.focus({ workspace = 8}))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.focus({ workspace = 9}))

--Screenshot
hl.bind( "PRINT", hl.dsp.exec_cmd("sh -c 'grim -g \"$(slurp)\" - | wl-copy'"))

--Alt+Tab
hl.bind("ALT + TAB", hl.dsp.window.cycle_next())
hl.bind("ALT + SHIFT + TAB", hl.dsp.window.cycle_next({prev = true }))

--Hyprland 
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("hyprlock"))

--Audio
--hl.bind( " XF86AudioRaiseVolume", hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+; notify-send -a Volume -h string:x-canonical-private-synchronous:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \"{print int(\\$2 * 100)}\") \"(wpctl get-volume @DEFAULT_AUDIO_SINK@ awk \"{print int (\\$2 * 100)}\")%\"'" ))
--hl.bind( " XF86AudioLowerVolume", hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-; notify-send -a Volume -h string:x-canonical-private-synchronous:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \"{print int(\\$2 * 100)}\") \"(wpctl get-volume @DEFAULT_AUDIO_SINK@ awk \"{print int (\\$2 * 100)}\")%\"'" ))
--hl.bind( " XF86AudioMute", hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ toggle; notify-send -a Volume -h string:x-canonical-private-synchronous:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \"{print int(\\$2 * 100)}\") \"(wpctl get-volume @DEFAULT_AUDIO_SINK@ awk \"{print int (\\$2 * 100)}\")%\"'" ))

hl.bind( "XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+; notify-send 'Volume up'"))
hl.bind( " XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-; notify-send 'Volume dowm'"))
hl.bind( " XF86AudioMute", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ toggle; notify-send 'Volume Mute Toggled'"))

hl.bind( " XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind( " XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind( " XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind( " XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"))


hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("sh -c 'cliphist list | fuzzel --dmenu | cliphist decode | wl-copy'"))

