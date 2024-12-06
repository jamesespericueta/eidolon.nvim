local lush = require('lush')
local colors = require("lua.lush_theme.colors")

local bg1 = colors.bg1
local bg2 = colors.bg2
local bg3 = colors.bg3

local fg = colors.fg
local grey1 = colors.grey1
local grey2 = colors.grey2
local grey3 = colors.grey3

local green1 = colors.green1
local green2 = colors.green2

local blue1 = colors.blue1
local blue2 = colors.blue2
local ice1 = colors.ice1
local ice2 = colors.ice2

local purple1 = colors.purple1
local purple2 = colors.purple2
local hyacinth1 = colors.hyacinth1
local hyacinth2 = colors.hyacinth2

local yellow1 = colors.yellow1
local yellow2 = colors.yellow2

local orange1 = colors.orange1
local orange2 = colors.orange2

local red1 = colors.red1
local red2 = colors.red2

local pink1 = colors.pink1
local pink2 = colors.pink2


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups

		Normal { bg = bg1, fg = fg },                    -- Normal text
		Comment { bg = bg1, fg = grey2 },                -- Any comment
		ColorColumn { Normal },                          -- Columns set with 'colorcolumn'
		Conceal { bg = bg1, fg = grey1 },                -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor { bg = fg, fg = bg1 },                    -- Character under the cursor
		CurSearch { bg = green2, fg = bg1 },             -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor { bg = fg, fg = bg1 },                   -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM { bg = fg, fg = bg1 },                  -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn { bg = bg3 },                       -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine { bg = bg3 },                         -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory { bg = bg1, fg = blue2 },              -- Directory names (and other special names in listings)
		DiffAdd { Normal, gui = "underline", sp = green1 }, -- Diff mode: Added line |diff.txt|
		DiffChange { Normal, gui = "underline", sp = blue1 }, -- Diff mode: Changed line |diff.txt|
		DiffDelete { Normal, gui = "underline", sp = red2 }, -- Diff mode: Deleted line |diff.txt|
		DiffText { Normal, gui = "underline", sp = fg }, -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer { bg = bg1, fg = bg1 },              -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor { bg = fg, fg = bg1 },                -- Cursor in a focused terminal
		TermCursorNC { Normal },                         -- Cursor in an unfocused terminal
		ErrorMsg { bg = bg1, fg = red1 },                -- Error messages on the command line
		VertSplit { bg = bg1, fg = bg1 },                -- Column separating vertically split windows
		Folded { bg = bg3, fg = grey1 },                 -- Line used for closed folds
		FoldColumn { Comment },                          -- 'foldcolumn'
		SignColumn { Comment },                          -- Column where |signs| are displayed
		IncSearch { bg = green1, fg = bg1 },             -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute { bg = red2, fg = bg1 },              -- |:substitute| replacement text highlighting
		LineNr { Comment },                              -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove { Comment },                         -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow { Comment },                         -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr { bg = bg1, fg = ice1 },            -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold { Comment },                      -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign { Comment },                      -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen { bg = bg1, fg = ice2 },              -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg { bg = bg1, fg = ice2 },                 -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea { Normal },                              -- Area for messages and cmdline
		MsgSeparator { Normal },                         -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg { bg = bg1, fg = hyacinth1 },            -- |more-prompt|
		NonText { bg = bg1, fg = grey1 },                -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat { Normal },                          -- Normal text in floating windows.
		FloatBorder { Comment },                         -- Border of floating windows.
		FloatTitle { bg = bg1, fg = blue2 },             -- Title of floating windows.
		NormalNC { Normal },                             -- normal text in non-current windows
		Pmenu { Normal },                                -- Popup menu: Normal item.
		PmenuSel { Normal },                             -- Popup menu: Selected item.
		PmenuKind { Normal },                            -- Popup menu: Normal item "kind"
		PmenuKindSel { Normal },                         -- Popup menu: Selected item "kind"
		PmenuExtra { Normal },                           -- Popup menu: Normal item "extra text"
		PmenuExtraSel { Normal },                        -- Popup menu: Selected item "extra text"
		PmenuSbar { Normal },                            -- Popup menu: Scrollbar.
		PmenuThumb { Normal },                           -- Popup menu: Thumb of the scrollbar.
		Question { bg = bg1, fg = hyacinth1 },           -- |hit-enter| prompt and yes/no questions
		QuickFixLine { bg = bg3, fg = fg },              -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search { Normal },                               -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey { bg = bg1, fg = grey1 },             -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad { Normal, gui = "undercurl", sp = red2 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap { Normal, gui = "undercurl", sp = green1 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal { Normal, gui = "undercurl", sp = blue1 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare { Normal, gui = "undercurl", sp = purple1 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine { Normal },                           -- Status line of current window
		StatusLineNC { Comment },                        -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine { bg = bg2, fg = fg },                   -- Tab pages line, not active tab page label
		TabLineFill { Normal },                          -- Tab pages line, where there are no labels
		TabLineSel { bg = grey3, fg = bg1 },             -- Tab pages line, active tab page label
		Title { bg = bg1, fg = blue2 },                  -- Titles for output from ":set all", ":autocmd" etc.
		Visual { Normal },                               -- Visual mode selection
		VisualNOS { Normal },                            -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg { bg = bg1, fg = ice1 },              -- Warning messages
		Whitespace { bg = bg1, fg = bg3 },               -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator { bg = bg1, fg = grey3 },           -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu { Normal },                             -- Current match in 'wildmenu' completion
		WinBar { Comment },                              -- Window bar of current window
		WinBarNC { Comment },                            -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant { fg = orange1 },           -- (*) Any constant
		Boolean { Constant },                --   A boolean constant: TRUE, false
		String { fg = green1 },              --   A string constant: "this is a string"
		Character { String },                --   A character constant: 'c', '\n'
		Number { fg = yellow2 },             --   A number constant: 234, 0xff
		Float { Number },                    --   A floating point constant: 2.3e10

		Identifier { fg = green2 },          -- (*) Any variable name
		Function { fg = blue2 },             --   Function name (also: methods for classes)

		Statement { fg = purple1 },          -- (*) Any statement
		Conditional { fg = hyacinth1 },      --   if, then, else, endif, switch, etc.
		Repeat { Conditional },              --   for, do, while, etc.
		Label { Conditional },               --   case, default, etc.
		Operator { fg = hyacinth2 },         --   "sizeof", "+", "*", etc.
		Keyword { Statement },               --   any other keyword
		Exception { Statement },             --   try, catch, throw

		Macro { fg = pink1 },                --   Same as Define
		Include { Macro },                   --   Preprocessor #include
		Define { Macro },                    --   Preprocessor #define
		PreCondit { Macro },                 --   Preprocessor #if, #else, #endif, etc.
		PreProc { Macro },                   -- (*) Generic Preprocessor

		Type { fg = ice1 },                  -- (*) int, long, char, etc.
		StorageClass { Type },               --   static, register, volatile, etc.
		Structure { Type },                  --   struct, union, enum, etc.
		Typedef { Type },                    --   A typedef

		Special { fg = blue1 },              -- (*) Any special symbol
		SpecialChar { Special },             --   Special character in a constant
		Tag { Special },                     --   You can use CTRL-] on this
		Delimiter { Special },               --   Character that needs attention
		SpecialComment { Special },          --   Special things inside a comment (e.g. '\n')
		Debug { Special },                   --   Debugging statements

		Underlined { gui = "underline", sp = fg }, -- Text that stands out, HTML links
		Ignore { Normal },                   -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error { fg = red2 },                 -- Any erroneous construct
		Todo { bg = blue1, fg = bg1 },       -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		LspReferenceText { Normal },                  -- Used for highlighting "text" references
		LspReferenceRead { Normal },                  -- Used for highlighting "read" references
		LspReferenceWrite { Normal },                 -- Used for highlighting "write" references
		LspInlayHint { bg = bg3.darken(10), fg = grey1 }, -- Used for highlighting inlay hints
		LspCodeLens { Conceal },                      -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		LspCodeLensSeparator { Comment },             -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter { bg = bg1, fg = bg1 }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError { Error },                                                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn { fg = ice1 },                                                    -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo { fg = blue1 },                                                   -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint { fg = hyacinth1 },                                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk { fg = green1 },                                                    -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError { bg = red2.darken(75).saturate(-40), fg = red2 },    -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn { bg = ice2.darken(75).saturate(-40), fg = ice2 },     -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo { bg = blue2.darken(70).saturate(-40), fg = blue2 },   -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint { bg = hyacinth2.darken(70).saturate(-60), fg = hyacinth2 }, -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk { bg = green1.darken(65).saturate(-40), fg = green2 },   -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError { Normal, gui = "undercurl", sp = red2 },               -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn { Normal, gui = "undercurl", sp = ice1 },                -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo { Normal, gui = "undercurl", sp = blue1 },               -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint { Normal, gui = "undercurl", sp = green1 },              -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk { DiagnosticUnderlineHint },                               -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError { DiagnosticError },                                     -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn { DiagnosticWarn },                                       -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo { DiagnosticInfo },                                       -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint { DiagnosticHint },                                       -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk { DiagnosticOk },                                           -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError { DiagnosticError },                                         -- Used for "Error" signs in sign column.
		DiagnosticSignWarn { DiagnosticWarn },                                           -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo { DiagnosticInfo },                                           -- Used for "Info" signs in sign column.
		DiagnosticSignHint { DiagnosticHint },                                           -- Used for "Hint" signs in sign column.
		DiagnosticSignOk { DiagnosticOk },                                               -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		sym("@variable") { Normal },                                               -- Various variable names
		sym("@variable.builtin") { fg = red2 },                                    -- Built-in variable names
		sym("@variable.parameter") { fg = ice2 },                                  -- Parameters of a function
		sym("@variable.parameter.builtin") { fg = hyacinth2 },                     -- Special parameters (e.g. _, it)
		sym("@variable.member") { fg = blue2 },                                    -- Object and struct fields
		sym("@constant") { fg = orange1 },                                         -- Constant identifiers
		sym("@constant.builtin") { fg = orange1 },                                 -- Built-in constant values
		sym("@constant.macro") { fg = pink1 },                                     -- Constants defined by the preprocessor
		sym("@module") { fg = ice2 },                                              -- Modules or namespace
		sym("@module.builtin") { fg = blue1 },                                     -- Built-in modules or namespace
		sym("@label") { fg = hyacinth1 },                                          -- Label
		sym("@string") { fg = green1 },                                            -- String literals
		sym("@string.documentation") { fg = green1 },                              -- String documenting code
		sym("@string.regex") { fg = yellow1 },                                     -- Regular expressions
		sym("@slushtring.escape") { fg = yellow1 },                                -- Escape sequences
		sym("@string.special") { fg = blue2 },                                     -- Special strings
		sym("@string.special.symbol") { fg = blue2 },                              -- Symbols or atoms
		sym("@string.special.path") { fg = blue2 },                                -- File paths
		sym("@string.special.url") { fg = orange2 },                               -- URLs/hyperlinks
		sym("@character") { fg = green1 },                                         -- Character litterals
		sym("@character.special") { fg = blue2 },                                  -- Special characters
		sym("@boolean") { fg = orange1 },                                          -- Boolean literals
		sym("@number") { fg = yellow2 },                                           -- Number literals
		sym("@number.float") { fg = yellow2 },                                     -- Float literals
		sym("@type") { fg = ice1 },                                                -- Type or class definitions
		sym("@type.builtin") { fg = ice1 },                                        -- Built-in types
		sym("@type.definition") { fg = ice1 },                                     -- Identifiers of type definitions
		sym("@attribute") { fg = orange2 },                                        -- Attribute annotations
		sym("@attribute.builtin") { fg = purple1 },                                -- Built-in annotations
		sym("@property") { fg = hyacinth2 },                                       -- The 'key' in 'key/value' pairs
		sym("@function") { fg = blue1 },                                           -- Function definitions
		sym("@function.builtin") { fg = hyacinth1 },                               -- Built-in function definitions
		sym("@function.call") { fg = blue2 },                                      -- Function calls
		sym("@function.macro") { fg = hyacinth1 },                                 -- Preprocessor macros
		sym("@function.method") { fg = blue1 },                                    -- Method definitions
		sym("@function.method.call") { fg = blue2 },                               -- Method calls
		sym("@constructor") { fg = green1 },                                       -- Constructor calls and definitions
		sym("@operator") { fg = fg },                                              -- Symbolic operators
		sym("@keyword") { fg = purple1 },                                          -- Keywords not fitting into specific categories
		sym("@keyword.coroutine") { fg = purple1 },                                -- Keywords related to coroutines
		sym("@keyword.function") { fg = purple1 },                                 -- Keywords that define a function
		sym("@keyword.operator") { fg = hyacinth2 },                               -- operators that are English words
		sym("@keyword.import") { fg = pink2 },                                     -- Keywords for including modules
		sym("@keyword.type") { fg = ice1 },                                        -- Keywords defining composite types
		sym("@keyword.modifier") { fg = purple1 },                                 -- Keywords defining type modifiers
		sym("@keyword.repeat") { fg = hyacinth1 },                                 -- Keywords related to loops
		sym("@keyword.return") { fg = pink1 },                                     -- Keywords like 'return' and 'yield'
		sym("@keyword.debug") { fg = purple2 },                                    -- Keywords related to debugging
		sym("@keyword.exception") { fg = purple2 },                                -- Keywords related to exceptions
		sym("@keyword.conditional") { fg = hyacinth1 },                            -- Keywords related to conditionals
		sym("@keyword.conditional.ternary") { fg = hyacinth1 },                    -- Ternary operators
		sym("@keyword.directive") { fg = purple1 },                                -- Various preprocessor directives and shebangs
		sym("@keyword.directive.define") { fg = purple1 },                         -- Preprocessor definition directives
		sym("@punctuation.delimiter") { fg = fg },                                 -- Delimiters
		sym("@punctuation.bracket") { fg = fg },                                   -- Brackets
		sym("@punctuation.special") { fg = ice1 },                                 -- Special Symbols
		sym("@comment") { fg = grey2 },                                            -- Line & block comments
		sym("@comment.documentation") { fg = grey2 },                              -- Comments documenting code
		sym("@comment.error") { bg = red2.rotate(-5).darken(20).saturate(8), fg = bg1 }, -- Error-type comments
		sym("@comment.warning") { bg = ice1, fg = bg1 },                           -- Warning-type comments
		sym("@comment.todo") { bg = blue1, fg = bg1 },                             -- Todo-type comments
		sym("@comment.note") { bg = green2, fg = bg1 },                            -- Note-type comments
		sym("@markup.strong") { fg = pink1 },                                      -- Bold text
		sym("@markup.italic") { fg = fg, gui = "italic" },                         -- Italic text
		sym("@markup.strikethrough") { fg = fg, gui = "strikethrough" },           -- Struck-through text
		sym("@markup.underline") { fg = fg, gui = "underline" },                   -- Underlined text
		sym("@markup.heading") { fg = blue1 },                                     -- Heading & titles
		sym("@markup.heading.1") { fg = blue1.darken(-5).saturate(5) },            -- Top-level heading
		sym("@markup.heading.2") { fg = blue1.darken(-10).saturate(10) },          -- Section heading
		sym("@markup.heading.3") { fg = blue1.darken(-15).saturate(15) },          -- Subsection heading
		sym("@markup.heading.4") { fg = blue1.darken(-20).saturate(20) },          -- And so on
		sym("@markup.heading.5") { fg = blue1.darken(-25).saturate(25) },          -- And so forth
		sym("@markup.heading.6") { fg = blue1.darken(-30).saturate(30) },          -- Six levels is enough
		sym("@markup.quote") { fg = fg },                                          -- Block quotes
		sym("@markup.math") { fg = blue2 },                                        -- Math environments
		sym("@markup.link") { fg = purple2 },                                      -- Text references footnotes, citations
		sym("@markup.link.label") { fg = hyacinth1 },                              -- Link, reference descriptions
		sym("@markup.link.url") { fg = orange2, gui = "underline" },               -- URL-style links
		sym("@markup.raw") { fg = green2 },                                        -- Literal or verbatim text
		sym("@markup.raw.block") { fg = pink1 },                                   -- Literal or verbatim text as a stand-alone block
		sym("@markup.list") { fg = ice1 },                                         -- List markers
		sym("@markup.list.checked") { fg = green1 },                               -- Checked todo-style list markers
		sym("@markup.list.unchecked") { fg = ice2 },                               -- Unchecked todo-style list markers
		sym("@diff.plus") { fg = green1 },                                         -- Added text (for diff files)
		sym("@diff.minus.") { fg = red2 },                                         -- Deleted text (for diff files)
		sym("@diff.delta") { fg = ice1 },                                          -- Changed text (for diff files)
		sym("@tag") { fg = purple1 },                                              -- XML-style tag names (e.g. in XML, HTML, etc.)
		sym("@tag.builtin") { fg = blue1 },                                        -- XML-style tag names (e.g. HTML5 tags)
		sym("@tag.attribute") { fg = hyacinth2 },                                  -- XML-style tag attributes
		sym("@tag.delimiter") { fg = ice2 },                                       -- XML-style tag delimiters
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
