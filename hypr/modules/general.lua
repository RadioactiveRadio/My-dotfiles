hl.config({
    general = {
        layout = "scrolling",
        border_size = 1,
    },


    scrolling = {
        follow_focus = true,
        focus_fit_method = 1,
        follow_min_visible = 0.1,
    },

    master = {
        smart_resizing = true,
        drop_at_cursor = true,
        mfact = 0.70
    },

    misc = {
        vrr = 1,
        allow_session_lock_restore = true,
        mouse_move_focuses_monitor = true
    },

    xwayland = {
        enabled = true,
        use_nearest_neighbor = true
    }
})
hl.workspace_rule({ workspace = 1, persistent = true })
hl.workspace_rule({ workspace = 2, persistent = true })
hl.workspace_rule({ workspace = 3, persistent = true })
hl.workspace_rule({ workspace = 4, persistent = true })
hl.workspace_rule({ workspace = 5, persistent = true })
