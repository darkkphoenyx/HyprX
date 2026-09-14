-- ============================================================
-- WINDOWS AND WORKSPACES
-- ~/.config/hypr/window-rules.lua
-- ============================================================


-- ============================================================
-- IGNORE MAXIMIZE REQUESTS
-- ============================================================

hl.window_rule({
    name = "suppress-maximize-events",

    match = {
        class = ".*",
    },

    suppress_event = "maximize",
})


-- ============================================================
-- FIX XWAYLAND DRAGS
-- ============================================================

hl.window_rule({
    name = "fix-xwayland-drags",

    match = {
        class = "^$",

        title = "^$",

        xwayland = true,

        float = true,

        fullscreen = false,

        pin = false,
    },

    no_initial_focus = true,
})


-- ============================================================
-- HYPRLAND-RUN
-- ============================================================

hl.window_rule({
    name = "move-hyprland-run",

    match = {
        class = "hyprland-run",
    },

    move = {
        "20",
        "monitor_h-120",
    },

    float = true,
})
