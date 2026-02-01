-- ~/.config/yazi/init.lua

require("starship"):setup()
require("simple-status"):setup()
--require("yatline-created-time"):setup()

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


-- https://github.com/imsi32/yatline.yazi/wiki

require("yatline"):setup({
theme = my_theme,
--	section_separator = { open = "", close = "" },
--	part_separator = { open = "", close = "" },
--	inverse_separator = { open = "", close = "" },

	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = "black",
		bg_mode = {
		normal = "white",
		select = "brightyellow",
		un_set = "brightred"
		}
	},
	style_b = { bg = "brightblack", fg = "brightwhite" },
	style_c = { bg = "black", fg = "brightwhite" },

	permissions_t_fg = "green",
	permissions_r_fg = "yellow",
	permissions_w_fg = "red",
	permissions_x_fg = "cyan",
	permissions_s_fg = "white",

	tab_width = 20,
	tab_use_inverse = false,

	selected = { icon = "󰻭", fg = "yellow" },
	copied = { icon = "", fg = "green" },
	cut = { icon = "", fg = "red" },

	total = { icon = "󰮍", fg = "yellow" },
	succ = { icon = "", fg = "green" },
	fail = { icon = "", fg = "red" },
	found = { icon = "󰮕", fg = "blue" },
	processed = { icon = "󰐍", fg = "green" },

	show_background = true,

	display_header_line = true,
	display_status_line = true,

	component_positions = { "header", "tab", "status" },

	header_line = {
		left = {
			section_a = {
				{type = "line", custom = false, name = "tabs", params = {"left"}},
			},
			section_b = {
			},
			section_c = {
			}
		},
		right = {
			section_a = {
				{type = "string", custom = false, name = "date", params = {"%A, %d %B %Y"}},
			},
			section_b = {
				{type = "string", custom = false, name = "date", params = {"%X"}},
			},
			section_c = {
			}
		}
	},

	status_line = {
		left = {
			section_a = {
				{type = "string", custom = false, name = "tab_mode"},
			},
			section_b = {
				{type = "string", custom = false, name = "hovered_size"},
			},
			section_c = {
				{type = "string", custom = false, name = "hovered_path"},
				{type = "coloreds", custom = false, name = "count"},
			}
		},
		right = {
			section_a = {
				{type = "string", custom = false, name = "cursor_position"},
			},
			section_b = {
				{type = "string", custom = false, name = "cursor_percentage"},
			},
			section_c = {
				{type = "string", custom = false, name = "hovered_file_extension", params = {true}},
				{type = "coloreds", custom = false, name = "permissions"},
			}
		}
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

