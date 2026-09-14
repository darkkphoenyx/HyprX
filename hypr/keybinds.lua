-- ============================================================
-- KEYBINDINGS
-- ~/.config/hypr/keybinds.lua
-- ============================================================

local mainMod = "SUPER"


-- ============================================================
-- PROGRAMS
-- ============================================================

hl.bind(
    mainMod .. " + T",
    hl.dsp.exec_cmd(terminal)
)

hl.bind(
    mainMod .. " + Q",
    hl.dsp.window.close()
)

hl.bind(
    mainMod .. " + SHIFT + M",
    hl.dsp.exec_cmd(
        "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"
    )
)

hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd(fileManager)
)

hl.bind(
    mainMod .. " + SHIFT + E",
    hl.dsp.exec_cmd("kitty -e yazi")
)

hl.bind(
    mainMod .. " + SHIFT + V",
    hl.dsp.window.float({
        action = "toggle",
    })
)

hl.bind(
    mainMod .. " + F",
    hl.dsp.window.fullscreen({
        mode = "maximized",
        action = "toggle",
    })
)

hl.bind(
    mainMod .. " + SHIFT + F",
    hl.dsp.window.fullscreen({
        mode = "fullscreen",
        action = "toggle",
    })
)

hl.bind(
    "ALT + SPACE",
    hl.dsp.exec_cmd(menu)
)

hl.bind(
    mainMod .. " + ALT + P",
    hl.dsp.window.pseudo()
)

hl.bind(
    mainMod .. " + R",
    hl.dsp.exec_cmd("~/.config/waybar/launch.sh")
)

hl.bind(
    mainMod .. " + L",
    hl.dsp.exec_cmd("hyprlock")
)

hl.bind(
    mainMod .. " + PERIOD",
    hl.dsp.exec_cmd(
        "~/.config/rofi/launchers/type-2/emoji.sh"
    )
)

hl.bind(
    mainMod .. " + SHIFT + W",
    hl.dsp.exec_cmd(
        "~/HyprX/scripts/rofi-wifi-menu.sh"
    )
)

hl.bind(
    mainMod .. " + C",
    hl.dsp.exec_cmd("code")
)

hl.bind(
    mainMod .. " + SHIFT + L",
    hl.dsp.exec_cmd("wlogout -b 2")
)

hl.bind(
    mainMod .. " + N",
    hl.dsp.exec_cmd("swaync-client -t -sw")
)


-- ============================================================
-- FOCUS
-- ============================================================

hl.bind(
    mainMod .. " + J",
    hl.dsp.focus({
        direction = "l",
    })
)

hl.bind(
    mainMod .. " + K",
    hl.dsp.focus({
        direction = "r",
    })
)

hl.bind(
    mainMod .. " + U",
    hl.dsp.focus({
        direction = "u",
    })
)

hl.bind(
    mainMod .. " + I",
    hl.dsp.focus({
        direction = "d",
    })
)

hl.bind(
    mainMod .. " + TAB",
    hl.dsp.window.cycle_next()
)


-- ============================================================
-- MOVE WINDOWS
-- ============================================================

hl.bind(
    mainMod .. " + SHIFT + J",
    hl.dsp.window.move({
        direction = "l",
    })
)

hl.bind(
    mainMod .. " + SHIFT + K",
    hl.dsp.window.move({
        direction = "r",
    })
)

hl.bind(
    mainMod .. " + SHIFT + U",
    hl.dsp.window.move({
        direction = "u",
    })
)

hl.bind(
    mainMod .. " + SHIFT + I",
    hl.dsp.window.move({
        direction = "d",
    })
)


-- ============================================================
-- WORKSPACES
-- ============================================================

for i = 1, 9 do
    hl.bind(
        mainMod .. " + " .. i,
        hl.dsp.focus({
            workspace = tostring(i),
        })
    )
end

hl.bind(
    mainMod .. " + 0",
    hl.dsp.focus({
        workspace = "10",
    })
)


-- ============================================================
-- MOVE WINDOW TO WORKSPACE
-- ============================================================

for i = 1, 9 do
    hl.bind(
        mainMod .. " + SHIFT + " .. i,
        hl.dsp.window.move({
            workspace = tostring(i),
        })
    )
end

hl.bind(
    mainMod .. " + SHIFT + 0",
    hl.dsp.window.move({
        workspace = "10",
    })
)


-- ============================================================
-- SPECIAL WORKSPACE / SCRATCHPAD
-- ============================================================

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + ALT + S",
    hl.dsp.window.move({
        workspace = "special:magic",
    })
)


-- ============================================================
-- SCROLL WORKSPACES
-- ============================================================

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({
        workspace = "e+1",
    })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({
        workspace = "e-1",
    })
)


-- ============================================================
-- MOVE / RESIZE WITH MOUSE
-- ============================================================

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    {
        mouse = true,
    }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    {
        mouse = true,
    }
)


-- ============================================================
-- VOLUME
-- ============================================================

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    )
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    )
)


-- ============================================================
-- BRIGHTNESS
-- ============================================================

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl set +5%"),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl set 5%-"),
    {
        repeating = true,
    }
)


-- ============================================================
-- MEDIA KEYS
-- ============================================================

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    {
        locked = true,
    }
)


-- ============================================================
-- HYPRSHOT
-- ============================================================

hl.bind(
    mainMod .. " + PRINT",
    hl.dsp.exec_cmd(
        "hyprshot -m window"
    )
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.exec_cmd(
        "hyprshot -m region"
    )
)

hl.bind(
    mainMod .. " + SHIFT + A",
    hl.dsp.exec_cmd(
        "hyprshot -m region --raw | satty --filename -"
    )
)


-- ============================================================
-- CLIPHIST
-- ============================================================

hl.bind(
    "SUPER + V",
    hl.dsp.exec_cmd(
        "cliphist list | "
        .. "rofi -dmenu "
        .. "-display-columns 2 "
        .. '-p "Clipboard" '
        .. "-theme ~/.config/rofi/launchers/type-2/style-2.rasi "
        .. "| cliphist decode | wl-copy"
    )
)


-- ============================================================
-- WALSET
-- ============================================================

hl.bind(
    mainMod .. " + CTRL + W",
    hl.dsp.exec_cmd(
        "bash ~/.local/bin/walset.sh"
    )
)
