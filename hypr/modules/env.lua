-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
-- Define Theme Name and Pixel Scale
hl.env("XCURSOR_THEME", "nier-cursors-bin")
hl.env("HYPRCURSOR_THEME", "nier-cursors-bin")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Toolkit variables ensuring cursor assets propagate to apps
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Cursors --
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Toolkit Backend Variables --
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- Force rendering layer for cursor maps
hl.env("WLR_NO_HARDWARE_CURSORS", "1")

-- XDG Desktop Portal --
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT Variables --
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct") -- Change to qt5ct if using older theme engines
