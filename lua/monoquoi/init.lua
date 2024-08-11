local utils = require 'monoquoi.utils'

local module = {}

function module.load(opts)
    if not utils.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = utils.NAME
    end

    if opts then require('monoquoi.config').setup(opts) end

    -- Setup colors
    require('monoquoi.colors').extend_palette()

    -- Apply theme
    local groups = require 'monoquoi.groups'
    utils.highlight(groups.get_groups())
    groups.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Monoquoi', function(_)
    vim.api.nvim_command 'colorscheme monoquoi'
end, {
    nargs = 1,
})

module.setup = require('monoquoi.config').setup

return module
