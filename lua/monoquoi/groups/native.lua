local module = {}

-- Some of these groups are not listed as default vim groups, but they
-- are defacto standard group names for syntax highlighting.  Commented
-- out groups should chain up to their "preferred" group by default.
-- Uncomment and edit if you want more specific syntax highlighting.

function module.get_groups()
    local colors = require 'monoquoi.colors'
    local options = require('monoquoi.config').options

    local groups = {}

    -- SYNTAX

    groups.Constant = { fg = colors.accent, bold = true } -- (preferred) any constant
    groups.Number = { link = 'Constant' } --   a number constant: 234  0xff
    groups.Boolean = { link = 'Number' } --  a boolean constant: TRUE  false
    groups.Float = { link = 'Number' } --    a floating point constant: 2.3e10
    groups.None = { fg = colors.none, bg = colors.none }
    groups.String = { fg = colors.accent } --   a string constant: "this is a string"
    groups.Character = { fg = colors.grey.light } --  a character constant: 'c', '\n'
    groups.Variable = { fg = colors.fg }
    groups.Namespace = { fg = colors.fg }
    groups.Field = { fg = colors.grey.light }
    groups.Title = { fg = colors.grey.light }
    groups.Builtin = { fg = colors.accent }
    groups.Identifier = { fg = colors.white.light } -- (preferred) any variable name
    groups.Function = { fg = colors.white.dim, bold = true } -- function name (also: methods for classes)
    groups.Keyword = { fg = colors.grey.dim, bold = options.bold_keywords } --  any other keyword
    groups.Statement = { link = 'Keyword' } -- (preferred) any statement
    groups.Conditional = { link = 'Keyword' } --  if, then, else, endif, switch, etc.
    groups.Repeat = { link = 'Keyword' } --   for, do, while, etc.
    groups.Label = { link = 'Keyword' } --    case, default, etc.
    groups.Operator = { fg = colors.accent } -- "sizeof", "+", "*", etc.
    groups.Macro = { link = 'Identifier' } -- same as Define
    groups.Exception = { link = 'Macro' } --  try, catch, throw
    groups.PreProc = { link = 'Macro' } -- (preferred) generic preprocessor
    groups.Include = { link = 'Macro' } --  preprocessor #include
    groups.Define = { link = 'Macro' } --   preprocessor #define
    groups.PreCondit = { link = 'Macro' } --  preprocessor #if, #else, #endif, etc.
    groups.Comment = { fg = colors.grey.bright, italic = options.italic_comments }
    groups.Type = { fg = colors.accent } -- (preferred) int, long, char, etc.
    groups.StorageClass = { link = 'Keyword' } -- static, register, volatile, etc.
    groups.Structure = { link = 'Type' } --  struct, union, enum, etc.
    groups.Typedef = { link = 'Type' } --  A typedef
    groups.Special = { fg = colors.accent } -- (preferred) any special symbol
    SpecialChar = { link = 'Special' } --  special character in a constant
    Tag = { link = 'Special' } --    you can use CTRL-] on this
    groups.Delimiter = { link = 'Special' } --  character that needs attention
    SpecialComment = { link = 'Special' } -- special things inside a comment
    Debug = { link = 'Special' } --    debugging statements
    groups.Underlined = { underline = true } -- (preferred) text that stands out, HTML links
    groups.Bold = { bold = true }
    groups.Italic = { italic = true }
    -- ("Ignore", below, may be invisible...)
    groups.Ignore = { fg = colors.grey.dark } -- (preferred) left blank, hidden  |hl-Ignore|
    groups.Error = { fg = colors.error } -- (preferred) any erroneous construct
    groups.Todo = { bg = colors.accent, fg = colors.white.bright } -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    groups.Note = { fg = colors.black.dark, bg = colors.info }
    -- What are these?
    groups.qfLineNr = { fg = colors.grey.bright }
    groups.qfFileName = { fg = colors.accent }
    groups.htmlH1 = { fg = colors.accent, bold = true }
    groups.htmlH2 = { fg = colors.accent }
    groups.Link = { fg = colors.accent, underline = true }
    groups.CodeBlock = { bg = colors.bg_float, fg = colors.fg }
    groups.mkdHeading = { link = 'htmlH1' }
    groups.mkdCode = { link = 'CodeBlock' }
    groups.mkdCodeDelimiter = { link = 'CodeBlock' }
    groups.mkdCodeStart = { fg = colors.cyan.base, bold = true }
    groups.mkdCodeEnd = { fg = colors.cyan.base, bold = true }
    groups.mkdLink = { link = 'Link' }
    groups.markdownHeadingDelimiter = { link = 'mkdHeading' }
    groups.markdownCode = { link = 'CodeBlock' }
    groups.markdownCodeBlock = { link = 'CodeBlock' }
    groups.markdownH1 = { link = 'htmlH1' }
    groups.markdownH2 = { link = 'htmlH2' }
    groups.markdownLinkText = { link = 'Link' }
    groups['@punctuation.special.markdown'] = { fg = colors.accent, bold = true }
    groups['@text.todo.unchecked'] = { fg = colors.accent } -- For brackets and parens.
    groups['@text.todo.checked'] = { fg = colors.green.base } -- For brackets and parens.
    groups['@text.literal.markdown_inline'] = { bg = colors.black.dark, fg = colors.accent }
    groups['@text.literal.markdown'] = { link = 'Normal' }
    groups['helpCommand'] = { bg = colors.black.dark, fg = colors.accent }
    groups.debugPC = { bg = colors.bg_sidebar } -- used for highlighting the current line in terminal-debug
    groups.debugBreakpoint = { fg = colors.red.bright } -- used for breakpoint colors in terminal-debug

    -- LANGUAGE SERVER PROTOCOL

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    groups.LspReferenceText = { bg = colors.fg_gutter } -- used for highlighting "text" references
    groups.LspReferenceRead = { bg = colors.fg_gutter } -- used for highlighting "read" references
    groups.LspReferenceWrite = { bg = colors.fg_gutter } -- used for highlighting "write" references
    groups.DiagnosticError = { fg = colors.error } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    groups.DiagnosticWarn = { fg = colors.warning } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    groups.DiagnosticInfo = { fg = colors.info } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    groups.DiagnosticHint = { fg = colors.hint } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    groups.DiagnosticVirtualTextError = { bg = colors.black.bright, fg = colors.error, bold = true } -- Used for "Error" diagnostic virtual text
    groups.DiagnosticVirtualTextWarn = { bg = colors.black.bright, fg = colors.warning } -- Used for "Warning" diagnostic virtual text
    groups.DiagnosticVirtualTextWarning = { bg = colors.black.bright, fg = colors.warning } -- Used for "Warning" diagnostic virtual text
    groups.DiagnosticVirtualTextInfo = { bg = colors.black.bright, fg = colors.info } -- Used for "Information" diagnostic virtual text
    groups.DiagnosticVirtualTextHint = { bg = colors.black.bright, fg = colors.hint } -- Used for "Hint" diagnostic virtual text
    groups.DiagnosticUnderlineError = { undercurl = true, sp = colors.error } -- Used to underline "Error" diagnostics
    groups.DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning } -- Used to underline "Warning" diagnostics
    groups.DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info } -- Used to underline "Information" diagnostics
    groups.DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint } -- Used to underline "Hint" diagnostics
    groups.DiagnosticText = { bg = colors.bg_float }
    groups.LspSignatureActiveParameter = { bg = colors.grey.brighter, bold = true }
    groups.LspCodeLens = { fg = colors.comment }
    groups.LspInfoBorder = { link = 'FloatBorder' }
    groups.ALEErrorSign = { fg = colors.error }
    groups.ALEWarningSign = { fg = colors.warning }

    -- EDITOR

    groups.Comment = { fg = colors.comment, italic = options.italic_comments } -- any comment
    groups.ColorColumn = { bg = colors.bg_visual } -- used for the columns set with 'colorcolumn'
    groups.Conceal = { fg = colors.grey.brighter } -- placeholder characters substituted for concealed text (see 'conceallevel')
    groups.Cursor = { fg = colors.black.dark, bg = colors.fg } -- character under the cursor
    groups.lCursor = { fg = colors.black.dark } -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    groups.CursorIM = { fg = colors.black.dark } -- like Cursor, but used when in IME mode |CursorIM|
    groups.CursorColumn = { bg = colors.bg_visual, bold = options.cursorline.bold } -- Screen-column at the cursor, when 'cursorcolumn' is set.
    groups.CursorLine = { bg = colors.bg_visual, bold = options.cursorline.bold } -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    groups.CursorLineNr = { fg = colors.black.lighter, bg = colors.accent, bold = options.cursorline.bold_number } -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    groups.CursorLineSign = {}
    groups.Directory = { fg = colors.accent } -- directory names (and other special names in listings)
    groups.EndOfBuffer = { fg = colors.fg_sidebar } -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { } -- cursor in a focused terminal
    -- TermCursorNC= { } -- cursor in an unfocused terminal
    groups.ErrorMsg = { fg = colors.error } -- error messages on the command line
    groups.VertSplit = { fg = colors.border } -- the column separating vertically split windows
    groups.WinSeparator = { fg = colors.border_fg, bg = colors.border_bg } -- the column separating vertically split windows
    groups.Folded = { fg = colors.fg_fold, bg = colors.bg_fold } -- line used for closed folds
    groups.FoldColumn = { bg = colors.bg_fold, fg = colors.fg_fold } -- 'foldcolumn'
    groups.SignColumn = { bg = colors.bg_sidebar, fg = colors.fg_sidebar } -- column where |signs| are displayed
    groups.SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_sidebar } -- column where |signs| are displayed
    groups.Substitute = { bg = colors.red.base, fg = colors.bg_dark } -- |:substitute| replacement text highlighting
    groups.LineNr = { fg = colors.fg_sidebar } -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    groups.MatchParen = { underline = true, bold = true, sp = colors.white.dim } -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    groups.ModeMsg = { fg = colors.fg, bold = true } -- 'showmode' message (e.g., "-- INSERT -- ")
    groups.MsgArea = { fg = colors.fg } -- Area for messages and cmdline
    -- MsgSeparator= { } -- Separator for scrolled messages, `msgsep` flag of 'display'
    groups.MoreMsg = { fg = colors.accent } -- |more-prompt|
    groups.NonText = { fg = colors.grey.bright } -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    groups.Normal = { fg = colors.fg, bg = colors.black.dark } -- normal text
    groups.NormalNC = { fg = colors.fg, bg = colors.bg } -- normal text in non-current windows
    groups.NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar } -- normal text in sidebar
    groups.NormalFloat = { fg = colors.fg_float, bg = colors.bg_float } -- Normal text in floating windows.
    groups.FloatBorder = { fg = colors.fg_float_border, bg = colors.bg_float_border }
    groups.FloatTitle = { fg = colors.yellow.base }
    groups.Pmenu = { bg = colors.bg_popup } -- Popup menu: normal item.
    groups.PmenuSel = { bg = colors.bg_selected } -- Popup menu: selected item.
    groups.PmenuSbar = { bg = colors.grey.dark } -- Popup menu: scrollbar.
    groups.PmenuThumb = { bg = colors.grey.dark, fg = colors.grey.dark } -- Popup menu: Thumb of the scrollbar.
    groups.Question = { fg = colors.info } -- |hit-enter| prompt and yes/no questions
    groups.QuickFixLine = { bg = colors.bg_visual, bold = true } -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    groups.Search = { bg = colors.bg_visual, fg = colors.accent, bold = true, underline = true } -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    groups.IncSearch = { bg = colors.accent, fg = colors.bg_visual, bold = true } -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    groups.CurSearch = { link = 'IncSearch' }
    groups.SpecialKey = { fg = colors.grey.brightest } -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    groups.SpellBad = { sp = colors.error, undercurl = true } -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    groups.SpellCap = { sp = colors.warning, undercurl = true } -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    groups.SpellLocal = { sp = colors.info, undercurl = true } -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    groups.SpellRare = { sp = colors.hint, undercurl = true } -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    groups.StatusLine = { fg = colors.fg_sidebar, bg = colors.bg_statusline } -- status line of current window
    groups.StatusLineNC = { fg = colors.grey.bright, bg = colors.bg_statusline } -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    groups.TabLine = { bg = colors.bg_statusline, fg = colors.fg } -- tab pages line, not active tab page label
    groups.TabLineFill = { bg = colors.black.dark, fg = colors.none } -- tab pages line, where there are no labels
    groups.TabLineSel = { fg = colors.fg_bright, bg = colors.bg } -- tab pages line, active tab page label
    groups.Title = { fg = colors.fg_bright, bold = true } -- titles for output from ":set all", ":autocmd" etc.
    groups.Visual = { bg = colors.bg_visual, bold = options.cursorline.bold } -- Visual mode selection
    groups.VisualNOS = { bg = colors.bg_visual } -- Visual mode selection when vim is "Not Owning the Selection".
    groups.WarningMsg = { fg = colors.warning } -- warning messages
    groups.Whitespace = { fg = colors.grey.bright } -- "nbsp", "space", "tab" and "trail" in 'listchars'
    groups.WildMenu = { bg = colors.bg_visual } -- current match in 'wildmenu' completion
    groups.WinBar = { bg = colors.bg_dark, fg = colors.grey.brightest }
    groups.WinBarNC = { bg = colors.bg_dark, fg = colors.grey.bright }

    -- DIFF

    groups.DiffAdd = { bg = colors.diff.add, bold = true } -- diff mode: Added line |diff.txt|
    groups.DiffChange = { bg = colors.diff.change0 } -- diff mode: Changed line |diff.txt|
    groups.DiffDelete = { bg = colors.diff.delete, bold = true } -- diff mode: Deleted line |diff.txt|
    groups.DiffText = { bg = colors.diff.change1, bold = true } -- diff mode: Changed text within a changed line |diff.txt|
    groups.diffAdded = { fg = colors.git.add }
    groups.diffRemoved = { fg = colors.git.delete }
    groups.diffChanged = { fg = colors.git.change }
    groups.diffOldFile = { fg = colors.fg }
    groups.diffNewFile = { fg = colors.green.base }
    groups.diffFile = { fg = colors.fg }
    groups.diffLine = {}
    groups.diffIndexLine = {}

    return groups
end

return module
