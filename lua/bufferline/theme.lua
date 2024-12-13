local colors = require("eidolon.colors")

local theme = {}
theme.highlights = function(new_setting)
	if new_setting ~= nil then
		for key, value in pairs(new_setting) do
			setting[key] = value
		end
	end

	return {
		ill = { fg = colors.bg1, bg = colors.bg1 },
		background = { fg = colors.grey1, bg = colors.bg1 },
		offset_separator = { fg = colors.bg1, bg = colors.bg1 },
		trunc_marker = { fg = colors.bg1, bg = colors.bg1 },

		buffer = { fg = colors.grey2, bg = colors.bg1 },
		separator = { fg = colors.bg1, bg = colors.bg1 },
		duplicate = { fg = colors.grey2, bg = colors.bg1, italic = true },
		modified = { fg = colors.ice2, bg = colors.bg1 },
		pick = { fg = colors.blue2, bg = colors.bg1 },
		close_button = { fg = colors.grey3, bg = colors.bg1 },
		numbers = { fg = colors.grey1, bg = colors.bg1, },
		diagnostic = { fg = colors.grey1, bg = colors.bg1, },
		hint = { fg = colors.lilac1, bg = colors.bg1, },
		hint_diagnostic = { fg = colors.lilac1, bg = colors.bg1, },
		info = { fg = colors.blue1, sp = colors.fg, bg = colors.bg11 },
		info_diagnostic = { fg = colors.blue1, bg = colors.bg1, },
		warning = { fg = colors.ice2, bg = colors.bg1, },
		warning_diagnostic = { fg = colors.ice2, bg = colors.bg1, },
		error = { fg = colors.red2, bg = colors.bg1, },
		error_diagnostic = { fg = colors.red2, bg = colors.bg1, },

		buffer_visible = { fg = colors.grey1, bg = colors.bg2 },
		separator_visible = { fg = colors.bg1, bg = colors.bg2 },
		duplicate_visible = { fg = colors.grey1, bg = colors.bg2, italic = true },
		modified_visible = { fg = colors.ice2, bg = colors.bg2 },
		pick_visible = { fg = colors.lilac2, bg = colors.bg2 },
		close_button_visible = { fg = colors.grey1, bg = colors.bg2 },
		numbers_visible = { fg = colors.grey1, bg = colors.bg2 },
		hint_visible = { fg = colors.lilac1, bg = colors.bg2, },
		hint_diagnostic_visible = { fg = colors.lilac1, bg = colors.bg2, },
		info_visible = { fg = colors.blue1, bg = colors.bg2 },
		info_diagnostic_visible = { fg = colors.blue1, bg = colors.bg2, },
		warning_visible = { fg = colors.ice2, bg = colors.bg2 },
		warning_diagnostic_visible = { fg = colors.ice2, bg = colors.bg2 },
		error_visible = { fg = colors.red2, bg = colors.bg2, },
		error_diagnostic_visible = { fg = colors.red2, bg = colors.bg2 },

		buffer_selected = { fg = colors.fg, bg = colors.bg2 },
		separator_selected = { fg = colors.bg1, bg = colors.bg2 },
		duplicate_selected = { fg = colors.fg, bg = colors.bg2, italic = true },
		modified_selected = { fg = colors.ice2, bg = colors.bg2 },
		pick_selected = { fg = colors.lilac2, bg = colors.bg2 },
		close_button_selected = { fg = colors.fg, bg = colors.bg2 },
		numbers_selected = { fg = colors.fg, bg = colors.bg2, bold = true, italic = true },
		hint_selected = { fg = colors.lilac1, bg = colors.bg2, bold = true, italic = true },
		hint_diagnostic_selected = { fg = colors.lilac1, bg = colors.bg2, bold = true, italic = true },
		info_selected = { fg = colors.blue1, bg = colors.bg2, bold = true, italic = true },
		info_diagnostic_selected = { fg = colors.blue1, bg = colors.bg2, bold = true, italic = true },
		warning_selected = { fg = colors.ice2, bg = colors.bg2, bold = true, italic = true },
		warning_diagnostic_selected = { fg = colors.ice2, bg = colors.bg2, bold = true, italic = true },
		error_selected = { fg = colors.red2, bg = colors.bg2, bold = true, italic = true },
		error_diagnostic_selected = { fg = colors.red2, bg = colors.bg2, bold = true, italic = true },
	}
end

return theme
