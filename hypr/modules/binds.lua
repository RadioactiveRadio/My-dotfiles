-- Global/Local Variables --
local terminal    = "kitty"
local fileManager = "nautilus"
local browser     = "zen-browser"

-- IPC helper function (fixed string implementation)
local function ipc(cmd)
    return "qs -c noctalia-shell ipc call " .. cmd
end

--Shell Binds--
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd(ipc("launcher toggle"))) --Launcher
hl.bind("SUPER + L", hl.dsp.exec_cmd(ipc("lockScreen lock")))       --Lock
hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc("launcher clipboard")))    --Clipboard

--Media--
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

--Utilities--
hl.bind("SUPER + F1", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call plugin:keybind-cheatsheet toggle"))

--Hyprpicker--
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))

--Screenshot--
hl.bind("SUPER + ALT + S",
    hl.dsp.exec_cmd("hyprshot --freeze --clipboard-only --mode region; sleep 0.5s && wl-paste | swappy -f -"))
hl.bind("SUPER + ALT + W",
    hl.dsp.exec_cmd("hyprshot --freeze --clipboard-only --mode window; sleep 0.5s && wl-paste | swappy -f -"))
hl.bind("+ PRINT",
    hl.dsp.exec_cmd("hyprshot --freeze --clipboard-only --mode output; sleep 0.5s && wl-paste | swappy -f -"))
hl.bind("SUPER + P", hl.dsp.exec_cmd(ipc("plugin:screen-toolkit toggle")))
hl.bind("SUPER + CTRL + C", hl.dsp.exec_cmd("hyprpicker -a"))

--Kill,Restart--
hl.bind("CTRL + SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprctl kill"))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("CTRL + SUPER + ALT + R", hl.dsp.exec_cmd("killall qs; sleep 0.2; qs -c noctalia-shell"))

--Windows--
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap { direction = "left" })   --swap
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap { direction = "right" }) --swap
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap { direction = "up" })       --swap
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap { direction = "down" })   --swap

hl.bind("SUPER + Q", hl.dsp.window.close("activewindow"))
hl.bind("CTRL + ALT + SPACE", function()
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
end)
-- Fullscreen --
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + ALT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind("ALT + TAB", hl.dsp.focus({ last = "last" }))
hl.bind("SUPER + TAB", hl.dsp.focus({ direction = "right" }))

-- Move focus with Super + Mouse scroll
hl.bind("SUPER + mouse_down", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ direction = "right" }))

-- Move focus with Super + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

--Workspaces--
for i = 1, 5 do
    local key = i % 6
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces (Fixed string concat error)
hl.bind("SUPER + CTRL + mouse_up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + mouse_down", hl.dsp.focus({ workspace = "e-1" }))

--Apps (Fixed to correctly pass string variables)--
hl.bind("SUPER + W", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + T", hl.dsp.exec_cmd(terminal))

--Special workspaces (scratchpad)--
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("special"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:special" }))
hl.bind("SUPER + C", hl.dsp.workspace.toggle_special("communication"))
hl.bind("SUPER + M", hl.dsp.workspace.toggle_special("music"))
hl.bind("CTRL + SHIFT + ESCAPE", hl.dsp.workspace.toggle_special("sysmon"))
