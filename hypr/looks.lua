-- ============================================================
-- LOOK AND FEEL
-- ~/.config/hypr/looks.lua
-- ============================================================


-- ============================================================
-- MATUGEN COLORS
-- ============================================================

local function load_matugen_colors(path)
    local colors = {}

    local file, err = io.open(path, "r")

    if not file then
        error(
            "Could not open Matugen colors.conf: "
            .. path
            .. "\n"
            .. tostring(err)
        )
    end

    for line in file:lines() do
        -- Matches:
        --
        -- $primary = rgba(80d4d6ff)
        --
        -- $background = rgba(0e1415ff)

        local name, value =
            line:match("^%s*%$([%w_]+)%s*=%s*(.-)%s*$")

        if name and value then
            colors[name] = value
        end
    end

    file:close()

    return colors
end


local colors = load_matugen_colors(
    os.getenv("HOME") .. "/.config/hypr/colors.conf"
)


-- ============================================================
-- VERIFY IMPORTANT COLORS
-- ============================================================

if not colors.primary then
    error("Matugen colors.conf does not contain $primary")
end

if not colors.background then
    error("Matugen colors.conf does not contain $background")
end


-- ============================================================
-- GENERAL
-- ============================================================

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,

        border_size = 1,

        col = {
            active_border = colors.primary,
            inactive_border = colors.background,
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },
})


-- ============================================================
-- DECORATION
-- ============================================================

hl.config({
    decoration = {
        rounding = 16,

        rounding_power = 3,

        active_opacity = 1.0,

        inactive_opacity = 1.0,

        shadow = {
            enabled = true,

            range = 4,

            render_power = 3,

            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,

            size = 5,

            passes = 2,

            vibrancy = 0.1696,
        },
    },
})


-- ============================================================
-- MASTER
-- ============================================================

hl.config({
    master = {
        new_status = "master",
    },
})


-- ============================================================
-- MISC
-- ============================================================

hl.config({
    misc = {
        force_default_wallpaper = 0,

        disable_hyprland_logo = true,

        disable_splash_rendering = true,
    },
})


-- ============================================================
-- INPUT
-- ============================================================

hl.config({
    input = {
        kb_layout = "us",

        kb_variant = "",

        kb_model = "",

        kb_options = "",

        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})


-- ============================================================
-- GESTURES
-- ============================================================

hl.gesture({
    fingers = 3,

    direction = "horizontal",

    action = "workspace",
})


-- ============================================================
-- DEVICE
-- ============================================================

hl.device({
    name = "epic-mouse-v1",

    sensitivity = -0.5,
})
