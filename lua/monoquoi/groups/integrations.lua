local module = {}

function module.get_groups()
    local colors = require 'monoquoi.colors'
    local options = require('monoquoi.config').options

    local groups = {}

    -- Dashboard.lua
    groups.DashboardHeader = { fg = colors.yellow.base, bold = true }
    groups.DashboardFooter = { fg = colors.cyan.base }
    groups.DashboardCenter = { fg = colors.green.base }
    groups.DashboardShortCut = { fg = colors.gray4, bold = true }
    groups.DashboardProjectTitle = { fg = colors.orange.base, bold = true }
    groups.DashboardProjectTitleIcon = { link = 'DashboardProjectTitle' }
    groups.DashboardProjectIcon = { fg = colors.magenta.bright }
    groups.DashboardMruTitle = { link = 'DashboardProjectTitle' }
    groups.DashboardMruIcon = {}
    groups.DashboardFiles = { fg = colors.fg }
    groups.DashboardDesc = { fg = colors.green.base }
    groups.DashboardKey = { fg = colors.red.base, bold = true }
    groups.DashboardIcon = { fg = colors.green.base }

    -- Diffview.
    groups.DiffviewNormal = { bg = colors.bg_dark, fg = colors.fg }
    groups.DiffviewStatusLine = { bg = colors.black0 }
    groups.DiffviewFilePanelTitle = { fg = colors.orange.base, bold = true }
    groups.DiffviewFolderSign = { fg = colors.yellow.dim }
    groups.DiffviewFolderName = { bg = colors.bg_dark, fg = colors.blue1 }

    -- Gitsigns.
    groups.GitSignsAdd = { fg = colors.git.add, bg = colors.bg_sidebar }
    groups.GitSignsChange = { fg = colors.git.change, bg = colors.bg_sidebar }
    groups.GitSignsDelete = { fg = colors.git.delete, bg = colors.bg_sidebar }
    groups.GitSignsAddPreview = { link = 'GitSignsAdd' }
    groups.GitSignsDeletePreview = { link = 'GitSignsDelete' }

    -- Indent blankline.
    groups.IndentBlanklineChar = { fg = colors.gray1 }
    groups.IndentBlanklineContextChar = { fg = colors.gray2 }
    groups.IndentBlanklineContextStart = { sp = colors.white0, underline = true }

    -- Lazy.
    groups.LazyH1 = { fg = colors.yellow.base, bold = true }
    groups.LazyButtonActive = { link = 'LazyH1' }
    groups.LazyButton = { fg = colors.white0 }
    groups.LazySpecial = { fg = colors.yellow.base }
    groups.LazyProgressDone = { fg = colors.green.bright }
    groups.LazyProgressTodo = { fg = colors.gray4 }
    groups.LazyCommitType = { fg = colors.yellow.base }

    -- Leap.
    groups.LeapLabelPrimary = { bg = colors.yellow.dim, fg = colors.black0, bold = true }
    if options.leap.dim_backdrop then groups.LeapBackdrop = { fg = colors.gray4 } end

    -- LSP Signature.
    groups.LspSignatureActiveParameter = { bg = colors.bg_float, underline = true, bold = true }

    -- LSP Saga.
    groups.SagaBorder = { bg = colors.black2, fg = colors.fg_float_border }
    groups.SagaNormal = { bg = colors.black2 }
    groups.HoverBorder = { link = 'FloatBorder' }
    groups.HoverNormal = { link = 'NormalFloat' }
    groups.RenameNormal = { bg = colors.bg_float, fg = colors.yellow.bright }
    groups.RenameBorder = { link = 'FloatBorder' }
    groups.DiagnosticPos = { fg = colors.fg }
    groups.DiagnosticWord = { fg = colors.fg }
    groups.DiagnosticSource = { fg = colors.gray4 }
    groups.DiagnosticNormal = { link = 'NormalFloat' }
    groups.DiagnosticShowNormal = { link = 'NormalFloat' }
    groups.DiagnosticShowBorder = { link = 'FloatBorder' }
    groups.DiagnosticBorder = { link = 'FloatBorder' }
    groups.SagaBorder = { bg = colors.black2, fg = colors.fg_float_border }
    groups.SagaNormal = { bg = colors.black2 }
    groups.HoverBorder = { link = 'FloatBorder' }
    groups.HoverNormal = { link = 'NormalFloat' }
    groups.RenameNormal = { bg = colors.bg_float, fg = colors.yellow.bright }
    groups.RenameBorder = { link = 'FloatBorder' }
    groups.DiagnosticPos = { fg = colors.fg }
    groups.DiagnosticWord = { fg = colors.fg }
    groups.DiagnosticSource = { fg = colors.gray4 }
    groups.DiagnosticNormal = { link = 'NormalFloat' }
    groups.DiagnosticShowNormal = { link = 'NormalFloat' }
    groups.DiagnosticShowBorder = { link = 'FloatBorder' }
    groups.DiagnosticBorder = { link = 'FloatBorder' }

    -- Mini Statusline.
    local LC = require 'lualine.themes.monoquoi'
    groups.MiniStatuslineModeNormal = { bg = LC.normal.a.bg, fg = LC.normal.a.fg, bold = LC.normal.a.gui == 'bold' }
    groups.MiniStatuslineModeInsert = { bg = LC.insert.a.bg, fg = LC.insert.a.fg, bold = LC.insert.a.gui == 'bold' }
    groups.MiniStatuslineModeVisual = { bg = LC.visual.a.bg, fg = LC.visual.a.fg, bold = LC.visual.a.gui == 'bold' }
    groups.MiniStatuslineModeReplace = { bg = LC.replace.a.bg, fg = LC.replace.a.fg, bold = LC.replace.a.gui == 'bold' }
    groups.MiniStatuslineModeCommand = { bg = LC.command.a.bg, fg = LC.command.a.fg, bold = LC.command.a.gui == 'bold' }
    groups.MiniStatuslineModeOther =
        { bg = LC.terminal.a.bg, fg = LC.terminal.a.fg, bold = LC.terminal.a.gui == 'bold' }
    groups.MiniStatuslineDevinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    groups.MiniStatuslineFilename = { bg = LC.normal.c.bg, fg = LC.normal.c.fg }
    groups.MiniStatuslineFileinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    groups.MiniStatuslineInactive = { bg = LC.inactive.a.bg, fg = LC.inactive.a.fg, bold = LC.inactive.a.gui == 'bold' }

    -- Nvim tree.
    groups.NvimTreeNormal = { fg = colors.fg, bg = colors.bg }
    groups.NvimTreeNormalNC = { fg = colors.fg, bg = colors.bg }
    groups.NvimTreeFolderName = { fg = colors.blue1 }
    groups.NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' }
    groups.NvimTreeEmptyFolderName = { link = 'NvimTreeFolderName' }
    groups.NvimTreeFolderIcon = { fg = colors.yellow.dim }
    groups.NvimTreeSpecialFile = { fg = colors.magenta.bright }
    groups.NvimTreeRootFolder = { fg = colors.gray4 }
    groups.NvimTreeGitDirty = { fg = colors.gray4 }
    groups.NvimTreeGitNew = { fg = colors.gray4 }
    groups.NvimTreeGitDeleted = { fg = colors.gray4 }
    groups.NvimTreeGitStaged = { fg = colors.gray4 }
    groups.NvimTreeIndentMarker = { fg = colors.gray4 }
    groups.NvimTreeWinSeparator = { fg = colors.bg_dark, bg = colors.bg }
    groups.NvimTreeCursorLine = { bg = colors.gray1 }
    groups.NvimTreeCursor = { bg = colors.none, fg = colors.none }
    groups.NvimTreeSymlink = { fg = colors.blue2 }

    -- Neo tree.
    groups.NeoTreeCursorLine = { link = 'NvimTreeCursorLine' }
    groups.NeoTreeDirectoryIcon = { link = 'NvimTreeFolderIcon' }
    groups.NeoTreeRootName = { link = 'NvimTreeRootFolder' }
    groups.NeoTreeFileName = { link = 'NvimTreeNormal' }
    groups.NeoTreeFileIcon = { fg = colors.blue2 }
    groups.NeoTreeFileNameOpened = { fg = colors.fg }
    groups.NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' }
    groups.NeoTreeGitAdded = { fg = colors.git.add }
    groups.NeoTreeGitConflict = { fg = colors.magenta.bright }
    groups.NeoTreeGitModified = { fg = colors.git.change }
    groups.NeoTreeGitUntracked = { fg = colors.fg_sidebar }
    groups.NeoTreeNormal = { link = 'NvimTreeNormal' }
    groups.NeoTreeNormalNC = { link = 'NvimTreeNormalNC' }
    groups.NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' }

    -- Noice Flat.
    groups.NoiceLspProgressTitle = { fg = colors.yellow.base, bg = colors.bg, bold = true }
    groups.NoiceLspProgressClient = { fg = colors.gray4, bg = colors.bg }
    groups.NoiceLspProgressSpinner = { fg = colors.cyan.bright, bg = colors.bg }
    groups.NoiceFormatProgressDone = { bg = colors.green.bright, fg = colors.black0 }
    groups.NoiceFormatProgressTodo = { bg = colors.gray5, fg = colors.black0 }
    groups.NoiceCmdline = { bg = colors.bg_dark, fg = colors.fg }
    groups.NoiceCmdlineIcon = { bg = colors.bg_float, fg = colors.yellow.base }
    groups.NoiceCmdlineIconSearch = { bg = colors.bg_dark, fg = colors.yellow.base }
    groups.NoicePopupBorder = { fg = colors.black0, bg = colors.bg_float }
    groups.NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' }
    groups.NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' }
    groups.NoiceCmdlinePopup = { bg = colors.bg_float }

    -- Noice Classic.
    if options.noice.style == 'classic' then
        groups.NoiceCmdline = { bg = colors.bg, fg = colors.cyan.base }
        groups.NoiceCmdlinePopup = { bg = colors.bg }
        groups.NoicePopupBorder = { bg = colors.bg, fg = colors.cyan.base }
        groups.NoiceCmdlineIcon = { bg = colors.bg, fg = colors.yellow.bright }
    end

    -- Nvim cmp.
    groups.CmpItemAbbrDeprecated = { fg = colors.grey4 }
    groups.CmpItemAbbrMatch = { fg = colors.blue1, bold = true }
    groups.CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' }
    groups.CmpItemKindField = { link = '@field' }
    groups.CmpItemKindProperty = { link = '@property' }
    groups.CmpItemKindEvent = { link = 'Type' }
    groups.CmpItemKindText = { fg = colors.grey4 }
    groups.CmpItemKindEnum = { link = 'Type' }
    groups.CmpItemKindKeyword = { link = 'Keyword' }
    groups.CmpItemKindConstant = { link = 'Constant' }
    groups.CmpItemKindConstructor = { link = 'Function' }
    groups.CmpItemKindReference = { fg = colors.cyan.base }
    groups.CmpItemKindFunction = { link = 'Function' }
    groups.CmpItemKindStruct = { link = 'Type' }
    groups.CmpItemKindClass = { link = 'Type' }
    groups.CmpItemKindModule = { fg = colors.yellow.dim }
    groups.CmpItemKindOperator = { link = 'Operator' }
    groups.CmpItemKindVariable = { fg = colors.cyan.base }
    groups.CmpItemKindFile = { fg = colors.blue1 }
    groups.CmpItemKindUnit = { link = 'Constant' }
    groups.CmpItemKindSnippet = { fg = colors.blue1 }
    groups.CmpItemKindFolder = { fg = colors.yellow.dark }
    groups.CmpItemKindMethod = { link = 'Function' }
    groups.CmpItemKindValue = { link = 'Constant' }
    groups.CmpItemKindEnumMember = { link = 'Type' }
    groups.CmpItemKindInterface = { link = 'Type' }
    groups.CmpItemKindColor = { link = 'Constant' }
    groups.CmpItemKindTypeParameter = { link = 'Type' }
    groups.CmpItemKindTabNine = { fg = colors.red.base }
    groups.CmpItemKindCopilot = { fg = colors.red.base }

    -- Nvim DAP.
    groups.DapBreakPoint = { fg = colors.red.bright }

    -- Nvim DAP UI.
    groups.DapUINormal = { bg = colors.bg_float }
    groups.DapUIStop = { fg = colors.red.bright, bold = true }
    groups.DapUIRestart = { fg = colors.green.bright, bold = true }
    groups.DapUIPlayPause = { fg = colors.green.bright, bold = true }
    groups.DapUIStepInto = { fg = colors.blue2, bold = true }
    groups.DapUIStepOver = { fg = colors.blue2, bold = true }
    groups.DapUIStepOut = { fg = colors.blue2, bold = true }
    groups.DapUIStepBack = { fg = colors.blue3, bold = true }
    groups.DapUIValue = { fg = colors.magenta.bright }
    groups.DapUIWatchesValue = { fg = colors.green.bright }
    groups.DapUIType = { fg = colors.yellow.base }
    groups.DapUIFloatBorder = { fg = colors.border_nb, bg = colors.bg }
    groups.DapUIFloatNormal = { bg = colors.bg }
    groups.DapUILineNumber = { fg = colors.green.bright }

    -- Notify.
    groups.NotifyBackground = { bg = colors.bg_float }
    groups.NotifyERRORBorder = { fg = colors.error }
    groups.NotifyERRORIcon = { fg = colors.error }
    groups.NotifyERRORTitle = { fg = colors.error, bold = true }
    groups.NotifyERRORBody = { fg = colors.fg }
    groups.NotifyWARNBorder = { fg = colors.warn }
    groups.NotifyWARNIcon = { fg = colors.warn }
    groups.NotifyWARNTitle = { fg = colors.warn, bold = true }
    groups.NotifyWARNBody = { fg = colors.fg }
    groups.NotifyINFOBorder = { fg = colors.info }
    groups.NotifyINFOIcon = { fg = colors.info }
    groups.NotifyINFOTitle = { fg = colors.info, bold = true }
    groups.NotifyINFOBody = { fg = colors.fg }
    groups.NotifyDEBUGBorder = { fg = colors.orange.bright }
    groups.NotifyDEBUGIcon = { fg = colors.orange.bright }
    groups.NotifyDEBUGTitle = { fg = colors.orange.bright, bold = true }
    groups.NotifyDEBUGBody = { fg = colors.fg }
    groups.NotifyTRACEBorder = { fg = colors.gray5 }
    groups.NotifyTRACEIcon = { fg = colors.gray5 }
    groups.NotifyTRACETitle = { fg = colors.gray5, bold = true }
    groups.NotifyTRACEBody = { fg = colors.fg }

    -- Telescope Classic.
    groups.TelescopeNormal = { bg = colors.bg }
    groups.TelescopePromptNormal = { bg = colors.bg }
    groups.TelescopeResultsNormal = { bg = colors.bg }
    groups.TelescopePreviewNormal = { bg = colors.bg }
    groups.TelescopePreviewLine = { bg = colors.gray2 }
    groups.TelescopeSelection = { bg = colors.bg, fg = colors.yellow.bright, bold = false }
    groups.TelescopeSelectionCaret = { fg = colors.yellow.bright, bg = colors.bg, bold = true }
    groups.TelescopePreviewTitle = { fg = colors.white0, bg = colors.bg, bold = true }
    groups.TelescopeResultsTitle = { fg = colors.white0, bg = colors.bg, bold = true }
    groups.TelescopePromptTitle = { fg = colors.white0, bg = colors.bg, bold = true }
    groups.TelescopeTitle = { fg = colors.white0, bg = colors.bg, bold = true }
    groups.TelescopeBorder = { fg = colors.white0, bg = colors.bg }
    groups.TelescopePromptBorder = { fg = colors.white0, bg = colors.bg }
    groups.TelescopeResultsBorder = { fg = colors.white0, bg = colors.bg }
    groups.TelescopePreviewBorder = { fg = colors.white0, bg = colors.bg }
    groups.TelescopeMatching = { bold = true }
    groups.TelescopePromptPrefix = { bg = colors.bg, fg = colors.orange.bright }
    groups.TelescopeMultiIcon = { fg = colors.yellow.bright, bg = colors.bg, bold = true }
    groups.TelescopeMultiSelection = { bg = colors.bg }

    -- Telescope Flat.
    if options.telescope.style == 'flat' then
        groups.TelescopeNormal = { bg = colors.bg_float }
        groups.TelescopePromptNormal = { bg = colors.black2 }
        groups.TelescopeResultsNormal = { bg = colors.bg_float }
        groups.TelescopePreviewNormal = { bg = colors.bg_float }
        groups.TelescopeSelection = { bg = colors.bg_float, fg = colors.yellow.bright }
        groups.TelescopeSelectionCaret = { fg = colors.yellow.bright, bg = colors.bg_float, bold = true }
        groups.TelescopePreviewTitle = { bg = colors.blue2, fg = colors.black0, bold = true }
        groups.TelescopeResultsTitle = { bg = colors.orange.base, fg = colors.black0, bold = true }
        groups.TelescopePromptTitle = { bg = colors.orange.base, fg = colors.black0, bold = true }
        groups.TelescopeTitle = { bg = colors.orange.base, fg = colors.black0, bold = true }
        groups.TelescopeBorder = { fg = colors.black0, bg = colors.black0 }
        groups.TelescopePromptBorder = { bg = colors.black2, fg = colors.black0 }
        groups.TelescopeResultsBorder = { bg = colors.bg_float, fg = colors.black0 }
        groups.TelescopePreviewBorder = { bg = colors.bg_float, fg = colors.black0 }
        groups.TelescopeMultiIcon = { fg = colors.yellow.bright, bg = colors.bg_float, bold = true }
        groups.TelescopeMultiSelection = { bg = colors.bg_float }
        groups.TelescopePromptPrefix = { bg = colors.black2, fg = colors.orange.bright }
        groups.TelescopePreviewLine = { bg = colors.gray1 }
    end

    -- Treesitter.
    -- LSP Semantic Token Groups
    -- Types follow the pattern @lsp.type.<type>.<filetype>
    -- These groups are for the Neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    --- Misc
    groups['@comment'] = { link = 'Comment' }
    --G['@comment.documentation'] = { link = 'Comment' }
    groups['@comment.documentation'] = { link = 'Comment' }
    groups['@comment.note'] = { fg = colors.hint }
    groups['@comment.error'] = { fg = colors.error }
    groups['@comment.hint'] = { fg = colors.hint }
    groups['@comment.info'] = { fg = colors.info }
    groups['@comment.warning'] = { fg = colors.warning }
    groups['@comment.todo'] = { fg = colors.todo }
    groups['@operator'] = { fg = colors.fg } -- For any operator: `+`, but also `->` and `*` in C.
    --- Punctuation
    groups['@punctuation.delimiter'] = { link = 'Delimiter' } -- For delimiters ie: `.`
    groups['@punctuation.bracket'] = { link = '@operator' } -- For brackets and parens.
    groups['@punctuation.special'] = { link = 'Macro' } -- For special punctutation that does not fall in the catagories before.
    groups['@punctuation.special.markdown'] = { fg = colors.orange.base, bold = true }
    --- Literals
    groups['@string'] = { link = 'String' }
    groups['@string.documentation'] = { link = 'String' }
    groups['@string.escape'] = { fg = colors.magenta.bright } -- For escape characters within a string.
    groups['@string.regex'] = { fg = colors.magenta.bright } -- For regexes.
    --- Functions
    groups['@constructor'] = { link = 'Function' } -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    groups['@parameter'] = { fg = colors.fg, italic = true } -- For parameters of a function.
    groups['@parameter.builtin'] = { link = 'Builtin' } -- For builtin parameters of a function, e.g. "..." or Smali's pG[1-99]
    --- Keywords
    groups['@keyword'] = { link = 'Keyword' } -- For keywords that don't fall in previous categories.
    groups['@keyword.conditional'] = { link = 'Conditional' }
    groups['@keyword.coroutine'] = { link = 'Macro' } -- For keywords related to coroutines.
    groups['@keyword.debug'] = { link = 'Debug' }
    groups['@keyword.directive'] = { link = 'PreProc' }
    groups['@keyword.directive.define'] = { link = 'Define' }
    groups['@keyword.exception'] = { link = 'Exception' }
    groups['@keyword.export'] = { link = 'Keyword' }
    groups['@keyword.function'] = { link = 'Keyword' } -- For keywords used to define a fuction.
    groups['@keyword.import'] = { link = 'Include' }
    groups['@keyword.operator'] = { link = 'Keyword' }
    groups['@keyword.repeat'] = { link = 'Repeat' }
    groups['@keyword.return'] = { link = 'Keyword' }
    groups['@keyword.storage'] = { link = 'StorageClass' }
    groups['@label'] = { link = 'Keyword' } -- For labels: `label:` in C and `:label:` in Lua.
    --- Types
    groups['@type.builtin'] = { link = 'Type' }
    groups['@field'] = { link = 'Field' } -- For fields.
    groups['@property'] = { link = 'Field' }
    --- Identifiers
    groups['@variable'] = { link = 'Variable' } -- Any variable name that does not have another highlight.
    groups['@variable.builtin'] = { link = 'Builtin' } -- Variable names that are defined by the languages, like `this` or `self`.
    groups['@variable.member'] = { link = 'Field' }
    --- Text
    -- G['@spell'] = { link = 'Comment' } -- This seems to interfere with regular text
    -- G["@text.literal.markdown"] = { }
    groups['@text'] = { link = 'Normal' } -- For strings considered text in a markup language.
    groups['@text.strong'] = { bold = true }
    groups['@text.emphasis'] = { italic = true } -- For text to be represented with emphasis.
    groups['@text.underline'] = { underline = true } -- For text to be represented with an underline.
    groups['@text.strike'] = { strikethrough = true } -- For strikethrough text.
    groups['@text.title'] = { link = 'Title' } -- Text that is part of a title.
    groups['@text.uri'] = { underline = true } -- Any URI like a link or email.
    groups['@text.literal'] = { link = 'String' }
    groups['@text.literal.markdown_inline'] = { bg = colors.black2, fg = colors.fg }
    groups['@text.reference'] = { link = 'Link' }
    groups['@text.todo.unchecked'] = { fg = colors.blue1 } -- For brackets and parens.
    groups['@text.todo.checked'] = { fg = colors.green.bright } -- For brackets and parens.
    groups['@text.warning'] = { fg = colors.warning }
    groups['@text.danger'] = { fg = colors.error }
    groups['@text.diff.add'] = { link = 'DiffAdd' }
    groups['@text.diff.delete'] = { link = 'DiffDelete' }
    groups['@text.todo'] = { link = 'Todo' }
    groups['@text.note'] = { link = 'Note' }
    --- Markup
    groups['@markup'] = { link = '@none' }
    groups['@markup.emphasis'] = { italic = true }
    groups['@markup.environment'] = { link = 'Macro' }
    groups['@markup.environment.name'] = { link = 'Type' }
    groups['@markup.heading'] = { link = 'Title' }
    groups['@markup.heading.1'] = { fg = colors.yellow.base, bold = true }
    groups['@markup.heading.2'] = { fg = colors.orange.base, bold = true }
    groups['@markup.heading.3'] = { fg = colors.magenta.base, bold = true }
    groups['@markup.heading.4'] = { fg = colors.green.base }
    groups['@markup.heading.5'] = { fg = colors.blue2, italic = true }
    groups['@markup.heading.6'] = { fg = colors.cyan.base, italic = true }
    groups['@markup.italic'] = { italic = true }
    groups['@markup.list'] = { link = '@operator' }
    groups['@markup.list.checked'] = { link = 'Field' }
    groups['@markup.list.markdown'] = { fg = colors.yellow.base, bold = true }
    groups['@markup.list.unchecked'] = { fg = colors.fg }
    groups['@markup.link'] = { fg = colors.cyan.base }
    groups['@markup.link.label'] = { link = 'SpecialChar' }
    groups['@markup.link.label.symbol'] = { link = 'Identifier' }
    groups['@markup.link.url'] = { link = 'Underlined' }
    groups['@markup.math'] = { link = 'Special' }
    groups['@markup.raw'] = { link = 'String' }
    groups['@markup.raw.markdown_inline'] = { bg = colors.black2, fg = colors.fg }
    groups['@markup.strong'] = { bold = true }
    groups['@markup.strikethrough'] = { strikethrough = true }
    groups['@markup.underline'] = { underline = true }
    -- TSX
    groups['@tag.tsx'] = { fg = colors.blue1 }
    groups['@constructor.tsx'] = { fg = colors.blue1 }
    groups['@tag.delimiter.tsx'] = { fg = colors.blue1 }
    --LSP Semantic Token Groups
    groups['@lsp.type.boolean'] = { link = 'Boolean' }
    groups['@lsp.type.builtinType'] = { link = 'Type' }
    groups['@lsp.type.comment'] = { link = 'Comment' }
    groups['@lsp.type.enum'] = { link = 'Type' }
    groups['@lsp.type.enumMember'] = { link = 'Field' }
    groups['@lsp.type.escapeSequence'] = { link = '@string.escape' }
    groups['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' }
    groups['@lsp.type.interface'] = { link = 'Keyword' }
    groups['@lsp.type.keyword'] = { link = 'Keyword' }
    groups['@lsp.type.namespace'] = { link = 'Namespace' }
    groups['@lsp.type.number'] = { link = 'Number' }
    groups['@lsp.type.operator'] = { link = '@operator' }
    groups['@lsp.type.parameter'] = { link = '@parameter' }
    groups['@lsp.type.property'] = { link = '@property' }
    groups['@lsp.type.selfKeyword'] = { link = 'Builtin' }
    groups['@lsp.type.string.rust'] = { link = 'String' }
    groups['@lsp.type.typeAlias'] = { link = 'Type' }
    groups['@lsp.type.unresolvedReference'] = { undercurl = true, sp = colors.error }
    groups['@lsp.type.variable'] = {} -- use treesitter styles for regular variables
    groups['@lsp.typemod.class.defaultLibrary'] = { link = 'Type' }
    groups['@lsp.typemod.enum.defaultLibrary'] = { link = 'Type' }
    groups['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Constant' }
    groups['@lsp.typemod.function.defaultLibrary'] = { link = 'Function' }
    groups['@lsp.typemod.keyword.async'] = { link = 'Macro' }
    groups['@lsp.typemod.macro.defaultLibrary'] = { link = 'Macro' }
    groups['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' }
    groups['@lsp.typemod.operator.injected'] = { link = 'Operator' }
    groups['@lsp.typemod.string.injected'] = { link = 'String' }
    groups['@lsp.typemod.type.defaultLibrary'] = { link = 'Type' }
    groups['@lsp.typemod.variable.defaultLibrary'] = { link = 'Variable' }
    groups['@lsp.typemod.variable.injected'] = { link = 'Variable' }
    groups['@lsp.typemod.variable.globalScope'] = { link = 'Macro' }
    -- Things that seems to be missing?
    groups['@annotation'] = { link = 'PreProc' }
    groups['@diff.plus'] = { link = 'DiffAdd' }
    groups['@diff.minus'] = { link = 'DiffDelete' }
    groups['@diff.delta'] = { link = 'DiffChange' }
    groups['@character'] = { link = 'Character' }
    groups['@character.special'] = { link = 'SpecialChar' }
    groups['@string.special'] = { fg = colors.yellow.base } -- For escape characters within a string.
    groups['@tag'] = { fg = colors.blue1 } -- Tags like html tag names.
    groups['@tag.delimiter'] = { fg = colors.fg } -- Tag delimiter like `<` `>` `/`
    groups['@tag.attribute'] = { fg = colors.yellow.base } -- Tag attribute like `id` `class`
    groups['@constant'] = { link = 'Constant' }
    groups['@number'] = { link = 'Constant' }
    groups['@float'] = { link = 'Constant' }
    groups['@boolean'] = { link = 'Constant' }
    groups['@constant.macro'] = { link = 'Constant' }
    groups['@constant.builtin'] = { link = 'Constant' }
    groups['@repeat'] = { link = 'Keyword' }
    groups['@conditional'] = { link = 'Keyword' }
    groups['@class'] = { link = 'Keyword' }
    groups['@include'] = { link = 'Include' }
    groups['@macro'] = { link = 'Macro' }
    groups['@module'] = { fg = colors.yellow.base }
    groups['@module.builtin'] = { link = 'Builtin' }
    groups['@preproc'] = { link = 'Macro' }
    groups['@attribute'] = { link = 'Macro' }
    groups['@function.macro'] = { link = 'Macro' }
    groups['@define'] = { link = 'Macro' }
    groups['@exception'] = { link = 'Macro' }
    groups['@function'] = { link = 'Function' }
    groups['@method'] = { link = 'Function' }
    groups['@method.call'] = { link = 'Function' }
    groups['@function.call'] = { link = 'Function' }
    groups['@function.builtin'] = { link = 'Function' }
    groups['@property.cpp'] = { fg = colors.cyan.base }
    groups['@namespace'] = { fg = colors.yellow.dim }
    groups['@type'] = { link = 'Type' }
    groups['@type.definition'] = { link = 'Type' }
    groups['@type.qualifier'] = { link = 'Keyword' }
    groups['@storageclass'] = { link = 'Keyword' }
    groups['@none'] = { link = 'None' }

    -- Treesitter context.
    local bg
    local fg
    if options.ts_context.dark_background then
        bg = colors.black1
        fg = colors.gray1
    else
        bg = colors.gray1
        fg = colors.gray4
    end
    groups.TreesitterContext = { bg = bg }
    groups.TreesitterContextLineNumber = { fg = fg, bg = bg }

    -- Neorg
    groups['@neorg.headings.1.title'] = { link = '@markup.heading.1' }
    groups['@neorg.headings.1.prefix'] = { link = '@markup.heading.1' }
    groups['@neorg.headings.2.title'] = { link = '@markup.heading.2' }
    groups['@neorg.headings.2.prefix'] = { link = '@markup.heading.2' }
    groups['@neorg.headings.3.title'] = { link = '@markup.heading.3' }
    groups['@neorg.headings.3.prefix'] = { link = '@markup.heading.3' }
    groups['@neorg.headings.4.title'] = { link = '@markup.heading.4' }
    groups['@neorg.headings.4.prefix'] = { link = '@markup.heading.4' }
    groups['@neorg.headings.5.title'] = { link = '@markup.heading.5' }
    groups['@neorg.headings.5.prefix'] = { link = '@markup.heading.5' }
    groups['@neorg.headings.6.title'] = { link = '@markup.heading.6' }
    groups['@neorg.headings.6.prefix'] = { link = '@markup.heading.6' }

    -- Trouble.
    groups.TroubleNormal = { bg = colors.bg_float }
    groups.TroubleText = { fg = colors.fg }
    groups.TroubleCount = { fg = colors.white1, bg = colors.gray2 }
    groups.TroubleIndent = { fg = colors.gray1 }
    groups.TroubleFile = { fg = colors.cyan.bright }
    groups.TroubleFoldIcon = { fg = colors.gray1 }

    -- Vimtex.
    groups.texGroup = { fg = colors.fg }
    groups.texEnvArgName = { fg = colors.cyan.base }
    groups.texMathEnvArgName = { link = 'texEnvArgName' }
    groups.texArg = { fg = colors.cyan.base }
    groups.texStyleItal = { fg = colors.fg, italic = true }
    groups.texPartArgTitle = { fg = colors.cyan.base }
    groups.texDelim = { fg = colors.fg }
    groups.texMathGroup = { fg = colors.fg }
    groups.texMathArg = { fg = colors.fg }
    groups.texMathZoneEnv = { fg = colors.fg }
    groups.texMathZoneTI = { fg = colors.fg }
    groups.texMathDelim = { fg = colors.fg }
    groups.texMathDelimZoneTI = { fg = colors.blue2 }
    groups.texMathSuper = { fg = colors.fg }
    groups.texFileArg = { fg = colors.green.base }
    groups.texRefArg = { fg = colors.magenta.bright }
    groups.texGroupError = { link = 'DiagnosticError' }
    groups.texMathSub = { fg = colors.fg }
    groups.texCmdEnv = { fg = colors.blue2 }
    groups.texSpecialChar = { fg = colors.orange.base }
    groups.texLigature = { fg = colors.fg }
    groups.texFileOpt = { fg = colors.fg }
    groups.texVerbZone = { link = 'String' }
    groups.texLstZone = { link = 'String' }

    -- Whichkey.
    groups.WhichKey = { fg = colors.yellow.base }
    groups.WhichKeyFloat = { bg = colors.bg_float }
    groups.WhichKeyDesc = { fg = colors.white0 }
    groups.WhichKeyGroup = { fg = colors.orange.bright, bold = true }
    groups.WhichKeyBorder = { fg = colors.black0, bg = colors.bg_float }
    -- TODO: Unsure.
    groups.WhichKeySeperator = {}
    groups.WhichKeyValue = {}

    return groups
end

return module
