local colors = require 'monoquoi.colors'

local monoquoi = {}

monoquoi.normal = {
    a = { bg = colors.orange.bright, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.insert = {
    a = { bg = colors.green.bright, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.command = {
    a = { bg = colors.cyan.bright, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.visual = {
    a = { bg = colors.red.bright, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.replace = {
    a = { bg = colors.magenta.bright, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.terminal = {
    a = { bg = colors.blue2, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

monoquoi.inactive = {
    a = { bg = colors.gray2, fg = colors.black0, gui = 'bold' },
    b = { bg = colors.gray1, fg = colors.white1 },
    c = { bg = colors.bg_statusline, fg = colors.white0 },
}

return monoquoi
