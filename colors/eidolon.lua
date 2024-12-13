package.loaded["eidolon"] = nil
package.loaded["eidolon.colors"] = nil
package.loaded["eidolon.theme"] = nil
package.loaded["eidolon.util"] = nil

require("eidolon").set()

local ok, _ = pcall(vim.cmd, "colorscheme eidolon")
if not ok then
	vim.cmd("colorscheme default")
end
