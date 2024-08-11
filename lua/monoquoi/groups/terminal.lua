local module = {}

function module.get_groups()
    local colors = require 'monoquoi.colors'
    local groups = {}

    groups.terminal_color_0 = colors.black.dark
    groups.terminal_color_8 = colors.grey.dark
    groups.terminal_color_1 = colors.red.base
    groups.terminal_color_9 = colors.red.bright
    groups.terminal_color_2 = colors.green.base
    groups.terminal_color_10 = colors.green.bright
    groups.terminal_color_3 = colors.yellow.base
    groups.terminal_color_11 = colors.yellow.bright
    groups.terminal_color_4 = colors.blue.base
    groups.terminal_color_12 = colors.blue.dim
    groups.terminal_color_5 = colors.magenta.base
    groups.terminal_color_13 = colors.magenta.bright
    groups.terminal_color_6 = colors.cyan.base
    groups.terminal_color_14 = colors.cyan.bright
    groups.terminal_color_7 = colors.white.dark
    groups.terminal_color_15 = colors.white.dim

    return groups
end

return module
