local colors = require 'monoquoi.colors'

local monoquoi = {}

monoquoi.normal = {
    a = { bg = colors.orange.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.insert = {
    a = { bg = colors.green.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.command = {
    a = { bg = colors.cyan.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.visual = {
    a = { bg = colors.red.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.replace = {
    a = { bg = colors.magenta.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.terminal = {
    a = { bg = colors.blue.dim, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.inactive = {
    a = { bg = colors.grey.dim, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.grey.dimmer, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

return monoquoi
