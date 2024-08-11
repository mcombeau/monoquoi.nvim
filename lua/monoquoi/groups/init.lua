local merge = require('monoquoi.utils').merge

local module = {}

function module.get_groups()
    local groups =
        merge(require('monoquoi.groups.native').get_groups(), require('monoquoi.groups.integrations').get_groups())

    return merge(groups, require('monoquoi.config').options.override)
end

function module.set_term_colors()
    local colors = require 'monoquoi.groups.terminal'
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return module
