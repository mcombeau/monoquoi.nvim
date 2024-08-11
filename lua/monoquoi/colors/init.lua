local utils = require 'monoquoi.utils'
local colors = require 'monoquoi.colors.monoquoi'

function colors.extend_palette()
    local options = require('monoquoi.config').options

    -- `white0` is used as the default fg, and has a blue tint.
    -- Reduce that amount of tint.
    colors.white0 = (options.reduced_blue and colors.white0_reduce_blue) or colors.white0_normal

    -- Modify the palette before generating colors.
    colors = options.on_palette(colors)

    -- Add these for international convenience :)
    colors.grey0 = colors.gray0
    colors.grey1 = colors.gray1
    colors.grey2 = colors.gray2
    colors.grey3 = colors.gray3
    colors.grey4 = colors.gray4
    colors.grey5 = colors.gray5

    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    colors.bg = (options.transparent_bg and colors.none)
        or ((options.swap_backgrounds and colors.black1) or colors.gray0)
    colors.bg_dark = (options.transparent_bg and colors.none) or colors.black0
    colors.bg_sidebar = (options.transparent_bg and colors.none) or colors.bg
    colors.bg_popup = (options.transparent_bg and colors.none) or colors.bg
    colors.bg_statusline = colors.black0
    colors.bg_selected = utils.blend(colors.gray2, colors.black0, 0.4)
    colors.bg_fold = colors.gray2

    -- Cursorline Background
    if options.cursorline.theme == 'light' then
        options.cursorline.bg = colors.gray1
    else
        options.cursorline.bg = colors.black0
    end

    colors.bg_visual = (options.transparent_bg and options.cursorline.bg)
        or utils.blend(options.cursorline.bg, colors.bg, options.cursorline.blend)

    -- Borders
    colors.border_fg = (options.bright_border and colors.white0) or colors.black0
    colors.border_bg = (options.transparent_bg and colors.none) or colors.bg

    -- Foregrounds
    colors.fg = colors.white0
    colors.fg_bright = colors.white1
    colors.fg_dark = colors.white0
    colors.fg_sidebar = colors.gray2
    colors.fg_fold = colors.fg
    colors.fg_selected = colors.fg_bright

    -- Popups
    colors.bg_popup = colors.bg
    colors.fg_popup = colors.fg
    colors.bg_popup_border = colors.bg
    colors.fg_popup_border = colors.border_fg

    -- Floating windows
    colors.bg_float = (options.transparent_bg and colors.none)
        or ((options.swap_backgrounds and colors.gray0) or colors.black1)
    colors.fg_float = colors.fg
    colors.bg_float_border = colors.bg_float
    colors.fg_float_border = colors.border_fg

    -- Diffs
    local diff_blend = 0.2
    colors.diff = {
        change0 = utils.blend(colors.blue1, colors.bg, 0.05),
        change1 = utils.blend(colors.blue2, colors.bg, diff_blend),
        add = utils.blend(colors.green.base, colors.bg, diff_blend),
        delete = utils.blend(colors.red.base, colors.bg, diff_blend),
    }

    -- Git
    colors.git = {
        add = colors.green.base,
        delete = colors.red.base,
        change = colors.blue1,
    }

    -- Diagnostics
    colors.error = colors.red.bright
    colors.warn = colors.yellow.base
    colors.warning = colors.warn
    colors.hint = colors.green.bright
    colors.info = colors.blue2

    -- Misc
    colors.comment = colors.gray4
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases.
colors.extend_palette()

return colors
