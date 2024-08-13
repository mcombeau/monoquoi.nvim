local utils = require 'monoquoi.utils'
local colors = require 'monoquoi.colors.monoquoi'

function colors.extend_palette()
    local options = require('monoquoi.config').options

    -- Modify the palette before generating colors.
    colors = options.on_palette(colors)

    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.
    colors.accent = options.accent_color or colors.accent_default

    -- Backgrounds
    colors.bg = (options.transparent_bg and colors.none)
        or ((options.swap_backgrounds and colors.black.dark) or colors.black.dim)
    colors.bg_dark = (options.transparent_bg and colors.none) or colors.black.dark
    colors.bg_sidebar = (options.transparent_bg and colors.none) or colors.bg
    colors.bg_popup = (options.transparent_bg and colors.none) or colors.bg
    colors.bg_statusline = colors.black.dark
    colors.bg_selected = utils.blend(colors.grey.dark, colors.black.dark, 0.4)
    colors.bg_fold = colors.grey.dark

    -- Cursorline Background
    if options.cursorline.theme == 'light' then
        options.cursorline.bg = colors.black.bright
    else
        options.cursorline.bg = colors.black.dark
    end

    colors.bg_visual = (options.transparent_bg and options.cursorline.bg)
        or utils.blend(options.cursorline.bg, colors.bg, options.cursorline.blend)

    -- Borders
    colors.border_fg = (options.bright_border and colors.white.dark) or colors.black.dark
    colors.border_bg = (options.transparent_bg and colors.none) or colors.bg

    -- Foregrounds
    colors.fg = colors.white.dark
    colors.fg_bright = colors.white.dim
    colors.fg_dark = colors.white.dark
    colors.fg_sidebar = colors.grey.dark
    colors.fg_fold = colors.fg
    colors.fg_selected = colors.fg_bright

    -- Popups
    colors.bg_popup = colors.bg
    colors.fg_popup = colors.fg
    colors.bg_popup_border = colors.bg
    colors.fg_popup_border = colors.border_fg

    -- Floating windows
    colors.bg_float = (options.transparent_bg and colors.none)
        or ((options.swap_backgrounds and colors.black.lighter) or colors.black.dim)
    colors.fg_float = colors.fg
    colors.bg_float_border = colors.bg_float
    colors.fg_float_border = colors.border_fg

    -- Diffs
    local diff_blend = 0.2
    colors.diff = {
        change0 = utils.blend(colors.blue.bright, colors.bg, 0.05),
        change1 = utils.blend(colors.blue.dim, colors.bg, diff_blend),
        add = utils.blend(colors.green.base, colors.bg, diff_blend),
        delete = utils.blend(colors.red.base, colors.bg, diff_blend),
    }

    -- Git
    colors.git = {
        add = colors.green.base,
        delete = colors.red.base,
        change = colors.blue.bright,
    }

    -- Diagnostics
    colors.error = colors.red.bright
    colors.warn = colors.yellow.base
    colors.warning = colors.warn
    colors.hint = colors.green.bright
    colors.info = colors.blue.dim

    -- Misc
    colors.comment = colors.grey.dim
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases.
colors.extend_palette()

return colors
