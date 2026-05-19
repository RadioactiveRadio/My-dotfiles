--Floating--
hl.window_rule({ match = { class = "PureRef" }, float = true })
hl.window_rule({ match = { class = "org.keepassxc.KeePassXC" }, float = true })
hl.window_rule({ match = { class = "hyprpolkitagent" }, float = true })
hl.window_rule({ match = { class = "peazip" }, float = true })
hl.window_rule({ match = { class = "pavucontrol" }, float = true })

-- Idle Inhibit --
hl.window_rule({ match = { class = "(?i).*wine.*|(?i).*bottles.*|(?i).*proton.*|^steam_app_.*$" }, idle_inhibit = "focus" })

-- Opaque --
hl.window_rule({ match = { class = "krita" }, opaque = true })
hl.window_rule({ match = { class = "Affinity.exe" }, opaque = true })
hl.window_rule({ match = { class = "blender" }, opaque = true })
hl.window_rule({ match = { class = "inkscape" }, opaque = true })

-- Special Workspace Apps --
hl.window_rule({ match = { title = "btop" }, workspace = "special:sysmon" })
hl.window_rule({ match = { class = "equibop" }, workspace = "special:communication" })
hl.window_rule({ match = { class = "org.gnome.Lollypop" }, workspace = "special:music" })
