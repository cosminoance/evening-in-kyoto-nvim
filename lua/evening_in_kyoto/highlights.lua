-- Evening in Kyoto -- highlight-group definitions.

return function(p)
  local groups = {}

  --  Editor UI
  groups.Normal = { fg = p.fg, bg = p.bg }
  groups.NormalNC = { fg = p.fg, bg = p.bg }
  groups.NormalFloat = { fg = p.fg, bg = p.bg_dark }
  groups.FloatBorder = { fg = p.comment, bg = p.bg_dark }
  groups.FloatTitle = { fg = p.bg, bg = p.yellow, bold = true }

  groups.Cursor = { fg = p.bg, bg = p.fg_bright }
  groups.CursorLine = { bg = p.bg_light }
  groups.CursorColumn = { bg = p.bg_light }
  groups.CursorLineNr = { fg = p.yellow, bg = p.bg, bold = true }
  groups.LineNr = { fg = p.comment }
  groups.SignColumn = { bg = p.bg }
  groups.ColorColumn = { bg = p.bg_light }
  groups.Conceal = { fg = p.comment, bg = p.bg }

  groups.VertSplit = { fg = p.bg_dark }
  groups.WinSeparator = { fg = p.bg_dark }

  groups.StatusLine = { fg = p.fg, bg = p.bg_dark }
  groups.StatusLineNC = { fg = p.comment, bg = p.bg_dark }
  groups.TabLine = { fg = p.comment, bg = p.bg_dark }
  groups.TabLineFill = { bg = p.bg_dark }
  groups.TabLineSel = { fg = p.bg, bg = p.yellow, bold = true }

  groups.Pmenu = { fg = p.fg, bg = p.bg_dark }
  groups.PmenuSel = { fg = p.bg, bg = p.yellow, bold = true }
  groups.PmenuSbar = { bg = p.bg_light }
  groups.PmenuThumb = { bg = p.comment }
  groups.WildMenu = { link = "PmenuSel" }

  groups.Visual = { bg = p.bg_light }
  groups.VisualNOS = { link = "Visual" }
  groups.Search = { fg = p.bg, bg = p.yellow }
  groups.IncSearch = { fg = p.bg, bg = p.orange, bold = true }
  groups.CurSearch = { link = "IncSearch" }
  groups.MatchParen = { fg = p.yellow, bold = true, underline = true }

  groups.Directory = { fg = p.blue }
  groups.Title = { fg = p.yellow, bold = true }
  groups.ModeMsg = { fg = p.fg, bold = true }
  groups.MsgArea = { fg = p.fg }
  groups.MsgSeparator = { link = "StatusLine" }
  groups.MoreMsg = { fg = p.green }
  groups.Question = { fg = p.green }
  groups.ErrorMsg = { fg = p.red, bold = true }
  groups.WarningMsg = { fg = p.orange, bold = true }
  groups.NonText = { fg = p.bg_light }
  groups.EndOfBuffer = { fg = p.bg }
  groups.Whitespace = { fg = p.bg_light }
  groups.SpecialKey = { fg = p.comment }

  groups.Folded = { fg = p.comment, bg = p.bg_dark }
  groups.FoldColumn = { fg = p.comment, bg = p.bg }

  groups.DiffAdd = { fg = p.green, bg = p.bg_dark }
  groups.DiffChange = { fg = p.orange, bg = p.bg_dark }
  groups.DiffDelete = { fg = p.red, bg = p.bg_dark }
  groups.DiffText = { fg = p.yellow, bg = p.bg_dark, bold = true }

  groups.SpellBad = { sp = p.red, undercurl = true }
  groups.SpellCap = { sp = p.blue, undercurl = true }
  groups.SpellLocal = { sp = p.cyan, undercurl = true }
  groups.SpellRare = { sp = p.magenta, undercurl = true }

  groups.healthError = { fg = p.red }
  groups.healthSuccess = { fg = p.green }
  groups.healthWarning = { fg = p.orange }

  -- legacy groups (fallback when treesitter not attached)
  groups.Comment = { fg = p.comment, italic = true }

  groups.Constant = { fg = p.magenta }
  groups.String = { fg = p.yellow }
  groups.Character = { fg = p.magenta }
  groups.Number = { fg = p.magenta }
  groups.Boolean = { fg = p.magenta }
  groups.Float = { fg = p.magenta }

  groups.Identifier = { fg = p.fg }
  groups.Function = { fg = p.green }

  groups.Statement = { fg = p.red }
  groups.Conditional = { fg = p.red }
  groups.Repeat = { fg = p.red }
  groups.Label = { fg = p.red }
  groups.Operator = { fg = p.red }
  groups.Keyword = { fg = p.red, italic = true }
  groups.Exception = { fg = p.red }

  groups.PreProc = { fg = p.yellow }
  groups.Include = { fg = p.red }
  groups.Define = { fg = p.red }
  groups.Macro = { fg = p.red }
  groups.PreCondit = { fg = p.red }

  groups.Type = { fg = p.cyan, italic = true }
  groups.StorageClass = { fg = p.red, italic = true }
  groups.Structure = { fg = p.cyan }
  groups.Typedef = { fg = p.cyan }

  groups.Special = { fg = p.blue }
  groups.SpecialChar = { fg = p.blue }
  groups.Tag = { fg = p.red }
  groups.Delimiter = { fg = p.fg }
  groups.SpecialComment = { fg = p.comment, italic = true }
  groups.Debug = { fg = p.red }

  groups.Underlined = { underline = true }
  groups.Bold = { bold = true }
  groups.Italic = { italic = true }
  groups.Ignore = { fg = p.comment }
  groups.Error = { fg = p.red, bold = true }
  groups.Todo = { fg = p.bg, bg = p.yellow, bold = true }

  -- treesitter @-captures
  groups['@comment'] = { link = 'Comment' }
  groups['@string'] = { link = 'String' }
  groups['@string.escape'] = { fg = p.blue }
  groups['@string.special'] = { fg = p.blue }
  groups['@character'] = { link = 'Character' }
  groups['@number'] = { link = 'Number' }
  groups['@boolean'] = { link = 'Boolean' }
  groups['@float'] = { link = 'Float' }
  groups['@constant'] = { link = 'Constant' }
  groups['@constant.builtin'] = { fg = p.magenta, italic = true }
  groups['@constant.macro'] = { link = 'Constant' }

  groups['@variable'] = { fg = p.fg }
  groups['@variable.builtin'] = { fg = p.red, italic = true }
  groups['@variable.parameter'] = { fg = p.fg, italic = true }
  groups['@variable.member'] = { fg = p.fg }
  groups['@property'] = { fg = p.fg }
  groups['@field'] = { link = '@property' }

  groups['@function'] = { link = 'Function' }
  groups['@function.builtin'] = { fg = p.green, italic = true }
  groups['@function.macro'] = { link = 'Function' }
  groups['@function.method'] = { link = 'Function' }
  groups['@constructor'] = { fg = p.cyan }
  groups['@parameter'] = { link = '@variable.parameter' }

  groups['@keyword'] = { link = 'Keyword' }
  groups['@keyword.function'] = { link = 'Keyword' }
  groups['@keyword.operator'] = { link = 'Keyword' }
  groups['@keyword.return'] = { link = 'Keyword' }
  groups['@keyword.import'] = { link = 'Include' }
  groups['@keyword.coroutine'] = { link = 'Keyword' }
  groups['@conditional'] = { link = 'Conditional' }
  groups['@repeat'] = { link = 'Repeat' }
  groups['@label'] = { link = 'Label' }
  groups['@exception'] = { link = 'Exception' }
  groups['@operator'] = { link = 'Operator' }

  groups['@type'] = { link = 'Type' }
  groups['@type.builtin'] = { fg = p.cyan, italic = true }
  groups['@type.definition'] = { link = 'Typedef' }
  groups['@storageclass'] = { link = 'StorageClass' }
  groups['@attribute'] = { fg = p.orange, italic = true }
  groups['@module'] = { fg = p.cyan }
  groups['@namespace'] = { link = '@module' }

  groups['@punctuation.delimiter'] = { link = 'Delimiter' }
  groups['@punctuation.bracket'] = { fg = p.fg }
  groups['@punctuation.special'] = { fg = p.blue }

  groups['@markup.strong'] = { bold = true }
  groups['@markup.italic'] = { italic = true }
  groups['@markup.underline'] = { underline = true }
  groups['@markup.strikethrough'] = { strikethrough = true }
  groups['@markup.heading'] = { fg = p.yellow, bold = true }
  groups['@markup.link'] = { fg = p.blue, underline = true }
  groups['@markup.link.url'] = { fg = p.cyan, underline = true }
  groups['@markup.raw'] = { fg = p.green }
  groups['@markup.list'] = { fg = p.red }
  groups['@markup.quote'] = { fg = p.comment, italic = true }

  groups['@tag'] = { link = 'Tag' }
  groups['@tag.attribute'] = { fg = p.orange, italic = true }
  groups['@tag.delimiter'] = { fg = p.comment }

  groups['@diff.plus'] = { link = 'DiffAdd' }
  groups['@diff.minus'] = { link = 'DiffDelete' }
  groups['@diff.delta'] = { link = 'DiffChange' }

  -- LSP
  groups['@lsp.type.class'] = { link = '@type' }
  groups['@lsp.type.decorator'] = { link = '@attribute' }
  groups['@lsp.type.enum'] = { link = '@type' }
  groups['@lsp.type.enumMember'] = { link = '@constant' }
  groups['@lsp.type.function'] = { link = '@function' }
  groups['@lsp.type.interface'] = { fg = p.cyan, italic = true }
  groups['@lsp.type.macro'] = { link = '@function.macro' }
  groups['@lsp.type.method'] = { link = '@function.method' }
  groups['@lsp.type.namespace'] = { link = '@module' }
  groups['@lsp.type.parameter'] = { link = '@variable.parameter' }
  groups['@lsp.type.property'] = { link = '@property' }
  groups['@lsp.type.struct'] = { link = '@type' }
  groups['@lsp.type.type'] = { link = '@type' }
  groups['@lsp.type.typeParameter'] = { link = '@type' }
  groups['@lsp.type.variable'] = { link = '@variable' }
  groups['@lsp.typemod.variable.readonly'] = { link = '@constant' }
  groups['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' }
  groups['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' }
  groups['@lsp.mod.deprecated'] = { strikethrough = true }
  groups['@lsp.typemod.class.defaultLibrary'] = { link = '@type.builtin' }

  -- diagnostics
  groups.DiagnosticError = { fg = p.error }
  groups.DiagnosticWarn = { fg = p.warn }
  groups.DiagnosticInfo = { fg = p.info }
  groups.DiagnosticHint = { fg = p.hint }
  groups.DiagnosticOk = { fg = p.green }
  groups.DiagnosticUnderlineError = { sp = p.error, undercurl = true }
  groups.DiagnosticUnderlineWarn = { sp = p.warn, undercurl = true }
  groups.DiagnosticUnderlineInfo = { sp = p.info, undercurl = true }
  groups.DiagnosticUnderlineHint = { sp = p.hint, undercurl = true }
  groups.DiagnosticVirtualTextError = { fg = p.error, bg = p.bg_dark }
  groups.DiagnosticVirtualTextWarn = { fg = p.warn, bg = p.bg_dark }
  groups.DiagnosticVirtualTextInfo = { fg = p.info, bg = p.bg_dark }
  groups.DiagnosticVirtualTextHint = { fg = p.hint, bg = p.bg_dark }
  groups.DiagnosticFloatingError = { fg = p.error }
  groups.DiagnosticFloatingWarn = { fg = p.warn }
  groups.DiagnosticFloatingInfo = { fg = p.info }
  groups.DiagnosticFloatingHint = { fg = p.hint }
  groups.DiagnosticSignError = { fg = p.error }
  groups.DiagnosticSignWarn = { fg = p.warn }
  groups.DiagnosticSignInfo = { fg = p.info }
  groups.DiagnosticSignHint = { fg = p.hint }
  groups.LspReferenceText = { bg = p.bg_light }
  groups.LspReferenceRead = { bg = p.bg_light }
  groups.LspReferenceWrite = { bg = p.bg_light, underline = true }
  groups.LspInlayHint = { fg = p.comment, bg = p.bg_dark, italic = true }
  groups.LspSignatureActiveParameter = { fg = p.yellow, bold = true }

  -- gitsigns.nvim
  groups.GitSignsAdd = { fg = p.green }
  groups.GitSignsChange = { fg = p.orange }
  groups.GitSignsDelete = { fg = p.red }
  groups.GitSignsChangedelete = { fg = p.orange }
  groups.GitSignsTopdelete = { fg = p.red }
  groups.GitSignsUntracked = { fg = p.cyan }
  groups.GitSignsAddNr = { link = 'GitSignsAdd' }
  groups.GitSignsChangeNr = { link = 'GitSignsChange' }
  groups.GitSignsDeleteNr = { link = 'GitSignsDelete' }
  groups.GitSignsAddLn = { bg = p.bg_dark }
  groups.GitSignsChangeLn = { bg = p.bg_dark }
  groups.GitSignsDeleteLn = { bg = p.bg_dark }
  groups.GitSignsCurrentLineBlame = { fg = p.comment, italic = true }

  -- blink.cmp
  groups.BlinkCmpMenu = { link = 'Pmenu' }
  groups.BlinkCmpMenuBorder = { link = 'FloatBorder' }
  groups.BlinkCmpMenuSelection = { link = 'PmenuSel' }
  groups.BlinkCmpDoc = { link = 'NormalFloat' }
  groups.BlinkCmpDocBorder = { link = 'FloatBorder' }
  groups.BlinkCmpLabel = { fg = p.fg }
  groups.BlinkCmpLabelMatch = { fg = p.yellow, bold = true }
  groups.BlinkCmpLabelDeprecated = { fg = p.comment, strikethrough = true }
  groups.BlinkCmpLabelDetail = { fg = p.comment }
  groups.BlinkCmpLabelDescription = { fg = p.comment }
  groups.BlinkCmpKind = { fg = p.cyan }
  groups.BlinkCmpSource = { fg = p.comment }
  groups.BlinkCmpGhostText = { fg = p.comment, italic = true }

  -- mini.nvim (mini.statusline mini.icons)
  groups.MiniStatuslineModeNormal = { fg = p.bg, bg = p.green, bold = true }
  groups.MiniStatuslineModeInsert = { fg = p.bg, bg = p.blue, bold = true }
  groups.MiniStatuslineModeVisual = { fg = p.bg, bg = p.magenta, bold = true }
  groups.MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true }
  groups.MiniStatuslineModeCommand = { fg = p.bg, bg = p.yellow, bold = true }
  groups.MiniStatuslineModeOther = { fg = p.bg, bg = p.cyan, bold = true }
  groups.MiniStatuslineDevinfo = { fg = p.fg, bg = p.bg_light }
  groups.MiniStatuslineFilename = { fg = p.comment, bg = p.bg_dark }
  groups.MiniStatuslineFileinfo = { fg = p.fg, bg = p.bg_light }
  groups.MiniStatuslineInactive = { fg = p.comment, bg = p.bg_dark }

  groups.MiniIconsRed = { fg = p.red }
  groups.MiniIconsOrange = { fg = p.orange }
  groups.MiniIconsYellow = { fg = p.yellow }
  groups.MiniIconsGreen = { fg = p.green }
  groups.MiniIconsCyan = { fg = p.cyan }
  groups.MiniIconsBlue = { fg = p.blue }
  groups.MiniIconsPurple = { fg = p.magenta }
  groups.MiniIconsGrey = { fg = p.comment }

  groups.MiniCursorword = { underline = true }
  groups.MiniCursorwordCurrent = { underline = true }

  -- telescope.nvim
  groups.TelescopeNormal = { fg = p.fg, bg = p.bg_dark }
  groups.TelescopeBorder = { fg = p.comment, bg = p.bg_dark }
  groups.TelescopePromptNormal = { fg = p.fg, bg = p.bg_light }
  groups.TelescopePromptBorder = { fg = p.comment, bg = p.bg_light }
  groups.TelescopePromptTitle = { fg = p.bg, bg = p.yellow, bold = true }
  groups.TelescopePromptPrefix = { fg = p.yellow }
  groups.TelescopeResultsTitle = { fg = p.bg, bg = p.cyan, bold = true }
  groups.TelescopePreviewTitle = { fg = p.bg, bg = p.green, bold = true }
  groups.TelescopeSelection = { bg = p.bg_light, bold = true }
  groups.TelescopeSelectionCaret = { fg = p.yellow }
  groups.TelescopeMatching = { fg = p.yellow, bold = true }
  groups.TelescopeMultiSelection = { fg = p.magenta }

  -- which-key.nvim
  groups.WhichKey = { fg = p.yellow, bold = true }
  groups.WhichKeyGroup = { fg = p.blue }
  groups.WhichKeyDesc = { fg = p.fg }
  groups.WhichKeySeparator = { fg = p.comment }
  groups.WhichKeyFloat = { link = 'NormalFloat' }
  groups.WhichKeyBorder = { link = 'FloatBorder' }
  groups.WhichKeyValue = { fg = p.comment }
  groups.WhichKeyIcon = { fg = p.cyan }
  groups.WhichKeyIconAzureAI = { fg = p.magenta }

  -- mason.nvim / mason-lspconfig
  groups.MasonHeader = { fg = p.bg, bg = p.yellow, bold = true }
  groups.MasonHeading = { fg = p.yellow, bold = true }
  groups.MasonHighlight = { fg = p.blue }
  groups.MasonHighlightBlock = { fg = p.bg, bg = p.blue }
  groups.MasonHighlightBlockBold = { fg = p.bg, bg = p.blue, bold = true }
  groups.MasonMuted = { fg = p.comment }
  groups.MasonMutedBlock = { fg = p.fg, bg = p.bg_light }
  groups.MasonError = { fg = p.red }
  groups.MasonWarning = { fg = p.orange }

  -- fidget.nvim (LSP progress UI)
  groups.FidgetTask = { fg = p.comment }
  groups.FidgetTitle = { fg = p.yellow, bold = true }

  -- todo-comments.nvim
  groups.TodoBgTODO = { fg = p.bg, bg = p.blue, bold = true }
  groups.TodoFgTODO = { fg = p.blue }
  groups.TodoBgNOTE = { fg = p.bg, bg = p.cyan, bold = true }
  groups.TodoFgNOTE = { fg = p.cyan }
  groups.TodoBgWARN = { fg = p.bg, bg = p.orange, bold = true }
  groups.TodoFgWARN = { fg = p.orange }
  groups.TodoBgFIX = { fg = p.bg, bg = p.red, bold = true }
  groups.TodoFgFIX = { fg = p.red }
  groups.TodoBgHACK = { fg = p.bg, bg = p.orange, bold = true }
  groups.TodoFgHACK = { fg = p.orange }
  groups.TodoBgPERF = { fg = p.bg, bg = p.magenta, bold = true }
  groups.TodoFgPERF = { fg = p.magenta }

  return groups
end
