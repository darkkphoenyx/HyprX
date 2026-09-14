-- ============================================================
-- ANIMATIONS
-- ============================================================

hl.config({
    animations = {
        enabled = true,
    },
})


-- ============================================================
-- CURVES
-- ============================================================

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        {0.23, 1},
        {0.32, 1},
    },
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        {0.65, 0.05},
        {0.36, 1},
    },
})

hl.curve("linear", {
    type = "bezier",
    points = {
        {0, 0},
        {1, 1},
    },
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        {0.5, 0.5},
        {0.75, 1},
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        {0.15, 0},
        {0.1, 1},
    },
})


-- ============================================================
-- ANIMATIONS
-- ============================================================

-- Global
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})


-- Border
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 7,
    bezier = "easeOutQuint",
})

-- Windows
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 6,
    bezier = "easeOutQuint",
})


-- Window opening
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 5.5,
    bezier = "easeOutQuint",
    style = "popin 87%",
})


-- Window closing
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 2.5,
    bezier = "linear",
    style = "popin 87%",
})


-- Fade in
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 2.5,
    bezier = "almostLinear",
})


-- Fade out
hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 2.2,
    bezier = "almostLinear",
})


-- General fade
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 4.5,
    bezier = "quick",
})


-- Layers
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuint",
})


-- Layer opening
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuint",
    style = "fade",
})


-- Layer closing
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 2.5,
    bezier = "linear",
    style = "fade",
})


-- Layer fade in
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 2.5,
    bezier = "almostLinear",
})


-- Layer fade out
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 2.2,
    bezier = "almostLinear",
})


-- Workspaces
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 3,
    bezier = "almostLinear",
    style = "fade",
})


-- Workspace entering
hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 2.2,
    bezier = "almostLinear",
    style = "fade",
})


-- Workspace leaving
hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 3,
    bezier = "almostLinear",
    style = "fade",
})


-- Zoom
hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 10,
    bezier = "quick",
})
