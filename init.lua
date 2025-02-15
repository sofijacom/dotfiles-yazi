-- ~/.config/yazi/init.lua

require("starship"):setup()
require("simple-status"):setup()

function Linemode:size_and_mtime()
local time = math.floor(self._file.cha.mtime or 0)
if time == 0 then
	time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%b %d %H:%M", time)
		else
			time = os.date("%b %d  %Y", time)
			end

			local size = self._file:size()
			return string.format("%s %s", size and ya.readable_size(size) or "-", time)

			end

require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

-- require("full-border"):setup()

require("smart-enter"):setup {
	open_multi = true,
}


require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = "#1e2030",
		bg_mode = {
			normal = "#8aadf4",  -- defaut catppuccin-macchiato
--		    normal = "#bd93f9",  -- flavors dracula
			select = "#c6a0f6",
			un_set = "#ed8796",
		},
	},
	style_b = { bg = "#363a4f", fg = "#cad3f5" },
	style_c = { bg = "#24273a", fg = "#cad3f5" },

	permissions_t_fg = "#a6da95",
	permissions_r_fg = "#eed49f",
	permissions_w_fg = "#ed8796",
	permissions_x_fg = "#91d7e3",
	permissions_s_fg = "#b7bdf8",

	tab_width = 20,
	tab_use_inverse = false,

	selected = { icon = "󰻭", fg = "#eed49f" },
	copied = { icon = "", fg = "#a6da95" },
	cut = { icon = "", fg = "#ed8796" },

	total = { icon = "", fg = "#eed49f" },
	succ = { icon = "", fg = "#a6da95" },
	fail = { icon = "", fg = "#ed8796" },
	found = { icon = "", fg = "#8aadf4" },
	processed = { icon = "", fg = "#a6da95" },

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "date", params = { "%A, %d %B %Y" } },
			},
			section_b = {
				{ type = "string", custom = false, name = "date", params = { "%X" } },
			},
			section_c = {},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "tab_path" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

-- Uncomment the topic you like for further use

-- ############################################################
-- "yatline-dracula"

--local dracula_theme = require("yatline-dracula"):setup()
--require("yatline"):setup({
	-- ===

--	theme = dracula_theme,

	-- ===
--})

-- #############################################################
-- yatline-catppuccin

local catppuccin_theme = require("yatline-catppuccin"):setup("macchiato") -- or "latte" | "frappe" | "macchiato" | "mocha"
require("yatline"):setup({
	-- ===

	theme = catppuccin_theme,

	-- ===
})

-- #############################################################
-- yatline-tokyo-night

--local tokyo_night_theme = require("yatline-tokyo-night"):setup("night") -- or moon/storm/day
--require("yatline"):setup({
	-- ===

--	theme = tokyo_night_theme,

	-- ===
--})

-- #############################################################
-- yatline-gruvbox

--local gruvbox_theme = require("yatline-gruvbox"):setup("dark") -- or "light"
--require("yatline"):setup({
	-- ===

--	theme = gruvbox_theme,

	-- ===
--})

-- #############################################################
-- yatline-gruvbox-material

--local gruvbox_material_theme = require("yatline-gruvbox-material"):setup({ mode = "dark", toughness = "medium" }) -- or "light" -- or "hard" | "soft"
--require("yatline"):setup({
	-- ===

--	theme = gruvbox_material_theme,

	-- ===
--})

