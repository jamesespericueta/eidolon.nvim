local util = {}
local eidolon = require("eidolon.eidolon")

function util.load_hl_group(hl_group)
	for group, attribute in pairs(hl_group) do
		vim.api.nvim_set_hl(0, group, attribute)
	end
end

function util.load_theme()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "eidolon"

	local editor = eidolon.load_editor()
	local syntax = eidolon.load_syntax()
	local lsp = eidolon.load_lsp()
	local treesitter = eidolon.load_treesitter()
	local coc = eidolon.load_coc()
	local notify = eidolon.load_notify()

	util.load_hl_group(editor)
	util.load_hl_group(syntax)
	util.load_hl_group(lsp)
	util.load_hl_group(treesitter)
	util.load_hl_group(coc)
	util.load_hl_group(notify)
end

return util
