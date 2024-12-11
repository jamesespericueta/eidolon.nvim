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
	local cmp = eidolon.load_cmp()
	local gitsigns = eidolon.load_gitsigns()
	local ibl = eidolon.load_ibl()
	local which_key = eidolon.load_which_key()
	local flash = eidolon.load_flash()
	local trouble = eidolon.load_trouble()
	local telescope = eidolon.load_telescope()
	local nvim_tree = eidolon.load_nvim_tree()
	local aerial = eidolon.load_aerial()
	local neogit = eidolon.load_neogit()

	util.load_hl_group(editor)
	util.load_hl_group(syntax)
	util.load_hl_group(lsp)
	util.load_hl_group(treesitter)
	util.load_hl_group(coc)
	util.load_hl_group(notify)
	util.load_hl_group(cmp)
	util.load_hl_group(gitsigns)
	util.load_hl_group(ibl)
	util.load_hl_group(which_key)
	util.load_hl_group(flash)
	util.load_hl_group(trouble)
	util.load_hl_group(telescope)
	util.load_hl_group(nvim_tree)
	util.load_hl_group(aerial)
	util.load_hl_group(neogit)
end

return util
