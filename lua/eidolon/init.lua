local util = require("eidolon.util")
local bufferline = require("bufferline.theme")

local set = function()
	util.load_theme()
end

return { set = set, bufferline = bufferline }
