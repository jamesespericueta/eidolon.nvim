local lush = require('lush')
local clr = require("lush_theme.colors")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- Neovim highlight groups (:h highlight-groups)

		Normal { bg = clr.bg1, fg = clr.fg },                -- Normal text
		Comment { bg = clr.bg1, fg = clr.grey2 },            -- Any comment
		ColorColumn { Normal },                              -- Columns set with 'colorcolumn'
		Conceal { bg = clr.bg1, fg = clr.grey1 },            -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor { bg = clr.fg, fg = clr.bg1 },                -- Character under the cursor
		CurSearch { bg = clr.green2, fg = clr.bg1 },         -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor { bg = clr.fg, fg = clr.bg1 },               -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM { bg = clr.fg, fg = clr.bg1 },              -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn { bg = clr.bg2 },                       -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine { bg = clr.bg2 },                         -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory { bg = clr.bg1, fg = clr.blue2 },          -- Directory names (and other special names in listings)
		DiffAdd { Normal, gui = "underline", sp = clr.green1 }, -- Diff mode: Added line |diff.txt|
		DiffChange { Normal, gui = "underline", sp = clr.blue1 }, -- Diff mode: Changed line |diff.txt|
		DiffDelete { Normal, gui = "underline", sp = clr.red2 }, -- Diff mode: Deleted line |diff.txt|
		DiffText { Normal, gui = "underline", sp = clr.fg }, -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer { bg = clr.bg1, fg = clr.bg1 },          -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor { bg = clr.fg, fg = clr.bg1 },            -- Cursor in a focused terminal
		TermCursorNC { Normal },                             -- Cursor in an unfocused terminal
		ErrorMsg { bg = clr.bg1, fg = clr.red1 },            -- Error messages on the command line
		VertSplit { bg = clr.bg1, fg = clr.bg1 },            -- Column separating vertically split windows
		Folded { bg = clr.bg3, fg = clr.grey1 },             -- Line used for closed folds
		FoldColumn { Comment },                              -- 'foldcolumn'
		SignColumn { Comment },                              -- Column where |signs| are displayed
		IncSearch { bg = clr.green1, fg = clr.bg1 },         -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute { bg = clr.red2, fg = clr.bg1 },          -- |:substitute| replacement text highlighting
		LineNr { Comment },                                  -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove { Comment },                             -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow { Comment },                             -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr { bg = clr.bg1, fg = clr.ice1 },        -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold { Comment },                          -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign { Comment },                          -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen { bg = clr.bg1, fg = clr.ice2 },          -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg { bg = clr.bg1, fg = clr.ice2 },             -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea { Normal },                                  -- Area for messages and cmdline
		MsgSeparator { Normal },                             -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg { bg = clr.bg1, fg = clr.hyacinth1 },        -- |more-prompt|
		NonText { bg = clr.bg1, fg = clr.grey1 },            -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat { Normal },                              -- Normal text in floating windows.
		FloatBorder { Comment },                             -- Border of floating windows.
		FloatTitle { bg = clr.bg1, fg = clr.blue2 },         -- Title of floating windows.
		NormalNC { Normal },                                 -- normal text in non-current windows
		Pmenu { Normal },                                    -- Popup menu: Normal item.
		PmenuSel { Normal },                                 -- Popup menu: Selected item.
		PmenuKind { Normal },                                -- Popup menu: Normal item "kind"
		PmenuKindSel { Normal },                             -- Popup menu: Selected item "kind"
		PmenuExtra { Normal },                               -- Popup menu: Normal item "extra text"
		PmenuExtraSel { Normal },                            -- Popup menu: Selected item "extra text"
		PmenuSbar { Normal },                                -- Popup menu: Scrollbar.
		PmenuThumb { Normal },                               -- Popup menu: Thumb of the scrollbar.
		Question { bg = clr.bg1, fg = clr.hyacinth1 },       -- |hit-enter| prompt and yes/no questions
		QuickFixLine { bg = clr.bg3, fg = clr.fg },          -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search { Normal },                                   -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey { bg = clr.bg1, fg = clr.grey1 },         -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad { Normal, gui = "undercurl", sp = clr.red2 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap { Normal, gui = "undercurl", sp = clr.green1 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal { Normal, gui = "undercurl", sp = clr.blue1 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare { Normal, gui = "undercurl", sp = clr.purple1 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine { Normal },                               -- Status line of current window
		StatusLineNC { Comment },                            -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine { bg = clr.bg1, fg = clr.fg },               -- Tab pages line, not active tab page label
		TabLineFill { Normal },                              -- Tab pages line, where there are no labels
		TabLineSel { bg = clr.bg3, fg = clr.fg },            -- Tab pages line, active tab page label
		Title { bg = clr.bg1, fg = clr.blue2 },              -- Titles for output from ":set all", ":autocmd" etc.
		Visual { Normal },                                   -- Visual mode selection
		VisualNOS { Normal },                                -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg { bg = clr.bg1, fg = clr.ice1 },          -- Warning messages
		Whitespace { bg = clr.bg1, fg = clr.bg3 },           -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator { bg = clr.bg1, fg = clr.grey3 },       -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu { Normal },                                 -- Current match in 'wildmenu' completion
		WinBar { Comment },                                  -- Window bar of current window
		WinBarNC { Comment },                                -- Window bar of not-current windows


		-- General syntax group highlights (:h group-name)

		Constant { fg = clr.orange1 },           -- (*) Any constant
		Boolean { Constant },                    --   A boolean constant: TRUE, false
		String { fg = clr.green1 },              --   A string constant: "this is a string"
		Character { String },                    --   A character constant: 'c', '\n'
		Number { fg = clr.yellow2 },             --   A number constant: 234, 0xff
		Float { Number },                        --   A floating point constant: 2.3e10

		Identifier { fg = clr.green2 },          -- (*) Any variable name
		Function { fg = clr.blue1 },             --   Function name (also: methods for classes)

		Statement { fg = clr.purple1 },          -- (*) Any statement
		Conditional { fg = clr.hyacinth1 },      --   if, then, else, endif, switch, etc.
		Repeat { Conditional },                  --   for, do, while, etc.
		Label { Conditional },                   --   case, default, etc.
		Operator { fg = clr.hyacinth2 },         --   "sizeof", "+", "*", etc.
		Keyword { fg = clr.fg },                 --   any other keyword
		Exception { fg = clr.pink1 },            --   try, catch, throw

		Macro { fg = clr.pink1 },                --   Same as Define
		Include { Macro },                       --   Preprocessor #include
		Define { Macro },                        --   Preprocessor #define
		PreCondit { Macro },                     --   Preprocessor #if, #else, #endif, etc.
		PreProc { Macro },                       -- (*) Generic Preprocessor

		Type { fg = clr.ice1 },                  -- (*) int, long, char, etc.
		StorageClass { Type },                   --   static, register, volatile, etc.
		Structure { Type },                      --   struct, union, enum, etc.
		Typedef { Type },                        --   A typedef

		Special { fg = clr.blue1 },              -- (*) Any special symbol
		SpecialChar { Special },                 --   Special character in a constant
		Tag { Special },                         --   You can use CTRL-] on this
		Delimiter { Special },                   --   Character that needs attention
		SpecialComment { Special },              --   Special things inside a comment (e.g. '\n')
		Debug { Special },                       --   Debugging statements

		Underlined { gui = "underline", sp = clr.fg }, -- Text that stands out, HTML links
		Ignore { Normal },                       -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error { fg = clr.red2 },                 -- Any erroneous construct
		Todo { bg = clr.blue1, fg = clr.bg1 },   -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX


		-- lsp highlight groups (:h lsp-highlight)

		LspReferenceText { Normal },                          -- Used for highlighting "text" references
		LspReferenceRead { Normal },                          -- Used for highlighting "read" references
		LspReferenceWrite { Normal },                         -- Used for highlighting "write" references
		LspInlayHint { bg = clr.bg3.darken(10), fg = clr.grey1 }, -- Used for highlighting inlay hints
		LspCodeLens { Conceal },                              -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		LspCodeLensSeparator { Comment },                     -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter { bg = clr.bg1, fg = clr.bg1 }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.


		-- Diagnostic highligh groups (:h diagnostic-highlights)

		DiagnosticError { Error },                                                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn { fg = clr.ice1 },                                                        -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo { fg = clr.blue1 },                                                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint { fg = clr.hyacinth1 },                                                   -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk { fg = clr.green1 },                                                        -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError { bg = clr.red1.darken(90).saturate(-10), fg = clr.red2 },    -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn { bg = clr.ice1.darken(90).saturate(-10), fg = clr.ice2 },     -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo { bg = clr.blue1.darken(90).saturate(-20), fg = clr.blue2 },   -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint { bg = clr.hyacinth1.darken(90).saturate(-60), fg = clr.hyacinth2 }, -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk { bg = clr.green1.darken(90).saturate(-30), fg = clr.green2 },   -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError { Normal, gui = "undercurl", sp = clr.red2 },                   -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn { Normal, gui = "undercurl", sp = clr.ice1 },                    -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo { Normal, gui = "undercurl", sp = clr.blue1 },                   -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint { Normal, gui = "undercurl", sp = clr.green1 },                  -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk { DiagnosticUnderlineHint },                                       -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError { DiagnosticError },                                             -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn { DiagnosticWarn },                                               -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo { DiagnosticInfo },                                               -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint { DiagnosticHint },                                               -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk { DiagnosticOk },                                                   -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError { DiagnosticError },                                                 -- Used for "Error" signs in sign column.
		DiagnosticSignWarn { DiagnosticWarn },                                                   -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo { DiagnosticInfo },                                                   -- Used for "Info" signs in sign column.
		DiagnosticSignHint { DiagnosticHint },                                                   -- Used for "Hint" signs in sign column.
		DiagnosticSignOk { DiagnosticOk },                                                       -- Used for "Ok" signs in sign column.


		-- Treesitter highligh groups (:h treesitter-highlight)

		sym("@variable") { fg = clr.fg },                                                  -- Various variable names
		sym("@variable.builtin") { fg = clr.red2 },                                        -- Built-in variable names
		sym("@variable.parameter") { fg = clr.ice2 },                                      -- Parameters of a function
		sym("@variable.parameter.builtin") { fg = clr.hyacinth2 },                         -- Special parameters (e.g. _, it)
		sym("@variable.member") { fg = clr.blue2 },                                        -- Object and struct fields
		sym("@constant") { fg = clr.orange1 },                                             -- Constant identifiers
		sym("@constant.builtin") { fg = clr.orange1 },                                     -- Built-in constant values
		sym("@constant.macro") { fg = clr.pink1 },                                         -- Constants defined by the preprocessor
		sym("@module") { fg = clr.ice2 },                                                  -- Modules or namespace
		sym("@module.builtin") { fg = clr.blue1 },                                         -- Built-in modules or namespace
		sym("@label") { fg = clr.hyacinth1 },                                              -- Label
		sym("@string") { fg = clr.green1 },                                                -- String literals
		sym("@string.documentation") { fg = clr.green1 },                                  -- String documenting code
		sym("@string.regex") { fg = clr.yellow1 },                                         -- Regular expressions
		sym("@slushtring.escape") { fg = clr.yellow1 },                                    -- Escape sequences
		sym("@string.special") { fg = clr.blue2 },                                         -- Special strings
		sym("@string.special.symbol") { fg = clr.blue2 },                                  -- Symbols or atoms
		sym("@string.special.path") { fg = clr.blue2 },                                    -- File paths
		sym("@string.special.url") { fg = clr.orange2 },                                   -- URLs/hyperlinks
		sym("@character") { fg = clr.green1 },                                             -- Character litterals
		sym("@character.special") { fg = clr.blue2 },                                      -- Special characters
		sym("@boolean") { fg = clr.orange1 },                                              -- Boolean literals
		sym("@number") { fg = clr.yellow2 },                                               -- Number literals
		sym("@number.float") { fg = clr.yellow2 },                                         -- Float literals
		sym("@type") { fg = clr.ice1 },                                                    -- Type or class definitions
		sym("@type.builtin") { fg = clr.ice1 },                                            -- Built-in types
		sym("@type.definition") { fg = clr.ice1 },                                         -- Identifiers of type definitions
		sym("@attribute") { fg = clr.orange2 },                                            -- Attribute annotations
		sym("@attribute.builtin") { fg = clr.purple1 },                                    -- Built-in annotations
		sym("@property") { fg = clr.hyacinth2 },                                           -- The 'key' in 'key/value' pairs
		sym("@function") { fg = clr.blue1 },                                               -- Function definitions
		sym("@function.builtin") { fg = clr.hyacinth1 },                                   -- Built-in function definitions
		sym("@function.call") { fg = clr.hyacinth1 },                                      -- Function calls
		sym("@function.macro") { fg = clr.pink1 },                                         -- Preprocessor macros
		sym("@function.method") { fg = clr.blue1 },                                        -- Method definitions
		sym("@function.method.call") { fg = clr.hyacinth1 },                               -- Method calls
		sym("@constructor") { fg = clr.green1 },                                           -- Constructor calls and definitions
		sym("@operator") { fg = clr.fg },                                                  -- Symbolic operators
		sym("@keyword") { fg = clr.purple1 },                                              -- Keywords not fitting into specific categories
		sym("@keyword.coroutine") { fg = clr.purple1 },                                    -- Keywords related to coroutines
		sym("@keyword.function") { fg = clr.purple1 },                                     -- Keywords that define a function
		sym("@keyword.operator") { fg = clr.hyacinth2 },                                   -- operators that are English words
		sym("@keyword.import") { fg = clr.pink2 },                                         -- Keywords for including modules
		sym("@keyword.type") { fg = clr.ice1 },                                            -- Keywords defining composite types
		sym("@keyword.modifier") { fg = clr.purple1 },                                     -- Keywords defining type modifiers
		sym("@keyword.repeat") { fg = clr.hyacinth1 },                                     -- Keywords related to loops
		sym("@keyword.return") { fg = clr.pink1 },                                         -- Keywords like 'return' and 'yield'
		sym("@keyword.debug") { fg = clr.purple2 },                                        -- Keywords related to debugging
		sym("@keyword.exception") { fg = clr.purple2 },                                    -- Keywords related to exceptions
		sym("@keyword.conditional") { fg = clr.hyacinth1 },                                -- Keywords related to conditionals
		sym("@keyword.conditional.ternary") { fg = clr.hyacinth1 },                        -- Ternary operators
		sym("@keyword.directive") { fg = clr.purple1 },                                    -- Various preprocessor directives and shebangs
		sym("@keyword.directive.define") { fg = clr.purple1 },                             -- Preprocessor definition directives
		sym("@punctuation.delimiter") { fg = clr.fg },                                     -- Delimiters
		sym("@punctuation.bracket") { fg = clr.fg },                                       -- Brackets
		sym("@punctuation.special") { fg = clr.ice1 },                                     -- Special Symbols
		sym("@comment") { fg = clr.grey2 },                                                -- Line & block comments
		sym("@comment.documentation") { fg = clr.grey2 },                                  -- Comments documenting code
		sym("@comment.error") { bg = clr.red2.rotate(-5).darken(20).saturate(8), fg = clr.bg1 }, -- Error-type comments
		sym("@comment.warning") { bg = clr.ice1, fg = clr.bg1 },                           -- Warning-type comments
		sym("@comment.todo") { bg = clr.blue1, fg = clr.bg1 },                             -- Todo-type comments
		sym("@comment.note") { bg = clr.green2, fg = clr.bg1 },                            -- Note-type comments
		sym("@markup.strong") { fg = clr.pink1 },                                          -- Bold text
		sym("@markup.italic") { fg = clr.fg, gui = "italic" },                             -- Italic text
		sym("@markup.strikethrough") { fg = clr.fg, gui = "strikethrough" },               -- Struck-through text
		sym("@markup.underline") { fg = clr.fg, gui = "underline" },                       -- Underlined text
		sym("@markup.heading") { fg = clr.blue1 },                                         -- Heading & titles
		sym("@markup.heading.1") { fg = clr.blue1.darken(-5).saturate(5) },                -- Top-level heading
		sym("@markup.heading.2") { fg = clr.blue1.darken(-10).saturate(10) },              -- Section heading
		sym("@markup.heading.3") { fg = clr.blue1.darken(-15).saturate(15) },              -- Subsection heading
		sym("@markup.heading.4") { fg = clr.blue1.darken(-20).saturate(20) },              -- And so on
		sym("@markup.heading.5") { fg = clr.blue1.darken(-25).saturate(25) },              -- And so forth
		sym("@markup.heading.6") { fg = clr.blue1.darken(-30).saturate(30) },              -- Six levels is enough
		sym("@markup.quote") { fg = clr.fg },                                              -- Block quotes
		sym("@markup.math") { fg = clr.blue2 },                                            -- Math environments
		sym("@markup.link") { fg = clr.purple2 },                                          -- Text references footnotes, citations
		sym("@markup.link.label") { fg = clr.hyacinth1 },                                  -- Link, reference descriptions
		sym("@markup.link.url") { fg = clr.orange2, gui = "underline" },                   -- URL-style links
		sym("@markup.raw") { fg = clr.green2 },                                            -- Literal or verbatim text
		sym("@markup.raw.block") { fg = clr.pink1 },                                       -- Literal or verbatim text as a stand-alone block
		sym("@markup.list") { fg = clr.ice1 },                                             -- List markers
		sym("@markup.list.checked") { fg = clr.green1 },                                   -- Checked todo-style list markers
		sym("@markup.list.unchecked") { fg = clr.ice2 },                                   -- Unchecked todo-style list markers
		sym("@diff.plus") { fg = clr.green1 },                                             -- Added text (for diff files)
		sym("@diff.minus.") { fg = clr.red2 },                                             -- Deleted text (for diff files)
		sym("@diff.delta") { fg = clr.ice1 },                                              -- Changed text (for diff files)
		sym("@tag") { fg = clr.purple1 },                                                  -- XML-style tag names (e.g. in XML, HTML, etc.)
		sym("@tag.builtin") { fg = clr.blue1 },                                            -- XML-style tag names (e.g. HTML5 tags)
		sym("@tag.attribute") { fg = clr.hyacinth2 },                                      -- XML-style tag attributes
		sym("@tag.delimiter") { fg = clr.ice2 },                                           -- XML-style tag delimiters
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
