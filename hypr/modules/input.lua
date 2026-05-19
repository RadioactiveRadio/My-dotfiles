hl.config({
    input = {
        -- Keyboard Base
        numlock_by_default = true,
        repeat_delay = 600,

        -- Key Remapping
        kb_options = "caps:none", -- Maps Caps Lock to act as an additional Tab key

        -- Mouse Focus Behavior
        follow_mouse = 1,
        mouse_refocus = true,
        float_switch_override_focus = 1,

        -- Touchpad Settings
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            drag_lock = false
        }
    }
})

-- =========================================================================
-- PER-DEVICE CONFIGURATIONS (Greyed out until needed)
-- =========================================================================

-- Greyed out line to configure a specific mouse device:
hl.device({
    name = "2.4g-receiver-mouse",
    sensitivity = 0.5,
    middle_button_emulation = true,
    scroll_method = "on_button_down",
    scroll_button = 274,
    force_no_accel = enabled,
    mouse_refocus = enabled,
    natural_scroll = false
})

-- Greyed out block for a graphics tablet configuration:
-- hl.device({
--     name = "wacom-intuos-pro-m-pen",
--     output = "DP-1",                -- Maps the tablet bounds to a specific monitor output
--     active_area_position = "0 0",
--     transform = 0
-- })
