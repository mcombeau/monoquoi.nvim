local colors = require 'monoquoi.colors'

local monoquoi = {}

monoquoi.normal = {
    a = { bg = colors.grey.brighter, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.insert = {
    a = { bg = colors.grey.dark, fg = colors.accent, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.command = {
    a = { bg = colors.black.dark, fg = colors.white.light, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.visual = {
    a = { bg = colors.accent, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.replace = {
    a = { bg = colors.red.bright, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.terminal = {
    a = { bg = colors.blue.dim, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

monoquoi.inactive = {
    a = { bg = colors.grey.dark, fg = colors.black.dark, gui = 'bold' },
    b = { bg = colors.black.bright, fg = colors.white.dim },
    c = { bg = colors.bg_statusline, fg = colors.white.dark },
}

return monoquoi
