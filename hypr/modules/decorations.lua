hl.config({
    general = {
        border_size = 1,
        --Gaps
        gaps_in = 10,
        gaps_out = 40,
    },

    decoration = {
        -- Rounding --
        rounding = 20,
        rounding_power = 4.0,

        -- Opacity --
        active_opacity = 0.95,
        inactive_opacity = 0.8,
        fullscreen_opacity = 1.0,

        -- Dimming --
        dim_modal = true,
        dim_inactive = true,
        dim_strength = 0.2,
        dim_special = 0.4,

        -- Blur --
        blur = {
            enabled = true,
            size = 8,
            new_optimizations = true,
            noise = 0.01,
            vibrancy = 0.02
        },

        -- Shadow --
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3
        }
    }
})
