-- local colorscheme = require("lua.lush_theme.eidolon")
local lushwright = require("shipwright.transform.lush")
run(require("lua.lush_theme.eidolon"),
	lushwright.to_lua,
	{ patchwrite, "lua/lush_theme/eidolon.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" })
