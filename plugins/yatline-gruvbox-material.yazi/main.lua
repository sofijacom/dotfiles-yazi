--=======================--
-- Gruvbox Material Dark --
--=======================--

local gruvbox_material_hard_dark_palette = {
	bg_dim			= "#141617",
	bg0			= "#1d2021",
	bg1			= "#282828",
	bg2			= "#282828",
	bg3			= "#3c3836",
	bg4			= "#3c3836",
	bg5			= "#504945",
	bg_statusline1		= "#282828",
	bg_statusline2		= "#32302f",
	bg_statusline3		= "#504945",
	bg_diff_green		= "#32361a",
	bg_diff_blue		= "#0d3138",
	bg_diff_red		= "#3c1f1e",
	bg_visual_green		= "#333e34",
	bg_visual_blue		= "#2e3b3b",
	bg_visual_yellow	= "#473c29",
	bg_visual_red		= "#442e2d",
	bg_current_word		= "#32302f",
	fg0			= "#d4be98",
	fg1			= "#ddc7a1",
	red			= "#ea6962",
	orange			= "#e78a4e",
	yellow			= "#d8a657",
	green			= "#a9b665",
	aqua			= "#89b482",
	blue			= "#7daea3",
	purple			= "#d3869b",
	gray0			= "#7c6f64",
	gray1			= "#928374",
	gray2			= "#a89984",
	bg_green		= "#a9b665",
	bg_yellow		= "#d8a657",
	bg_red			= "#ea6962",
}

local gruvbox_material_medium_dark_palette = {
	bg_dim			= "#1b1b1b",
	bg0			= "#282828",
	bg1			= "#32302f",
	bg2			= "#32302f",
	bg3			= "#45403d",
	bg4			= "#45403d",
	bg5			= "#5a524c",
	bg_statusline1		= "#32302f",
	bg_statusline2		= "#3a3735",
	bg_statusline3		= "#504945",
	bg_diff_green		= "#34381b",
	bg_diff_blue		= "#0e363e",
	bg_diff_red		= "#402120",
	bg_visual_green		= "#3b4439",
	bg_visual_blue		= "#374141",
	bg_visual_yellow	= "#4f422e",
	bg_visual_red		= "#4c3432",
	bg_current_word		= "#3c3836",
	fg0			= "#d4be98",
	fg1			= "#ddc7a1",
	red			= "#ea6962",
	orange			= "#e78a4e",
	yellow			= "#d8a657",
	green			= "#a9b665",
	aqua			= "#89b482",
	blue			= "#7daea3",
	purple			= "#d3869b",
	gray0			= "#7c6f64",
	gray1			= "#928374",
	gray2			= "#a89984",
	bg_green		= "#a9b665",
	bg_yellow		= "#d8a657",
	bg_red			= "#ea6962",
}

local gruvbox_material_soft_dark_palette = {
	bg_dim			= "#252423",
	bg0			= "#32302f",
	bg1			= "#3c3836",
	bg2			= "#3c3836",
	bg3			= "#504945",
	bg4			= "#504945",
	bg5			= "#665c54",
	bg_statusline1		= "#3c3836",
	bg_statusline2		= "#46413e",
	bg_statusline3		= "#5b534d",
	bg_diff_green		= "#3d4220",
	bg_diff_blue		= "#0f3a42",
	bg_diff_red		= "#472322",
	bg_visual_green		= "#424a3e",
	bg_visual_blue		= "#404946",
	bg_visual_yellow	= "#574833",
	bg_visual_red		= "#543937",
	bg_current_word		= "#45403d",
	fg0			= "#d4be98",
	fg1			= "#ddc7a1",
	red			= "#ea6962",
	orange			= "#e78a4e",
	yellow			= "#d8a657",
	green			= "#a9b665",
	aqua			= "#89b482",
	blue			= "#7daea3",
	purple			= "#d3869b",
	gray0			= "#7c6f64",
	gray1			= "#928374",
	gray2			= "#a89984",
	bg_green		= "#a9b665",
	bg_yellow		= "#d8a657",
	bg_red			= "#ea6962",
}

--- Gets the gruvbox material dark theme.
--- @param toughness string Tougness of theme: "hard", "soft" or "medium".
--- @return table theme Used in Yatline.
local function gruvbox_material_dark_theme(toughness)
	local gruvbox_material_dark_palette
	if toughness == "hard" then
		gruvbox_material_dark_palette = gruvbox_material_hard_dark_palette
	elseif toughness == "soft" then
		gruvbox_material_dark_palette = gruvbox_material_soft_dark_palette
	else
		gruvbox_material_dark_palette = gruvbox_material_medium_dark_palette
	end

	return {
		-- yatline
		section_separator_open = "",
		section_separator_close = "",

		inverse_separator_open = "",
		inverse_separator_close = "",

		part_separator_open = "",
		part_separator_close = "",

		style_a = {
			fg = gruvbox_material_dark_palette.bg0,
			bg_mode = {
				normal = gruvbox_material_dark_palette.gray2,
				select = gruvbox_material_dark_palette.blue,
				un_set = gruvbox_material_dark_palette.orange
			}
		},
		style_b = { bg = gruvbox_material_dark_palette.bg5, fg = gruvbox_material_dark_palette.fg1 },
		style_c = { bg = gruvbox_material_dark_palette.bg2, fg = gruvbox_material_dark_palette.fg1 },

		permissions_t_fg = gruvbox_material_dark_palette.green,
		permissions_r_fg = gruvbox_material_dark_palette.yellow,
		permissions_w_fg = gruvbox_material_dark_palette.red,
		permissions_x_fg = gruvbox_material_dark_palette.aqua,
		permissions_s_fg = gruvbox_material_dark_palette.gray0,

		selected = { icon = "󰻭", fg = gruvbox_material_dark_palette.yellow },
		copied = { icon = "", fg = gruvbox_material_dark_palette.green },
		cut = { icon = "", fg = gruvbox_material_dark_palette.red },

		total = { icon = "󰮍", fg = gruvbox_material_dark_palette.yellow },
		succ = { icon = "", fg = gruvbox_material_dark_palette.green },
		fail = { icon = "", fg = gruvbox_material_dark_palette.red },
		found = { icon = "󰮕", fg = gruvbox_material_dark_palette.blue },
		processed = { icon = "󰐍", fg = gruvbox_material_dark_palette.green },

		-- yatline-githead
		prefix_color = gruvbox_material_dark_palette.fg1,
		branch_color = gruvbox_material_dark_palette.blue,
		commit_color = gruvbox_material_dark_palette.purple,
		behind_color = gruvbox_material_dark_palette.orange,
		ahead_color = gruvbox_material_dark_palette.aqua,
		stashes_color = gruvbox_material_dark_palette.purple,
		state_color = gruvbox_material_dark_palette.red,
		staged_color = gruvbox_material_dark_palette.yellow,
		unstaged_color = gruvbox_material_dark_palette.orange,
		untracked_color = gruvbox_material_dark_palette.aqua,
	}
end

--========================--
-- Gruvbox Material Light --
--========================--

local gruvbox_material_hard_light_palette = {
	bg_dim			= "#f3eac7",
	bg0			= "#f9f5d7",
	bg1			= "#f5edca",
	bg2			= "#f3eac7",
	bg3			= "#f2e5bc",
	bg4			= "#eee0b7",
	bg5			= "#ebdbb2",
	bg_statusline1		= "#f5edca",
	bg_statusline2		= "#f3eac7",
	bg_statusline3		= "#eee0b7",
	bg_diff_green		= "#e4edc8",
	bg_visual_green		= "#dde5c2",
	bg_diff_red		= "#f8e4c9",
	bg_visual_red		= "#f0ddc3",
	bg_diff_blue		= "#e0e9d3",
	bg_visual_blue		= "#d9e1cc",
	bg_visual_yellow	= "#f9eabf",
	bg_current_word		= "#f3eac7",
	fg0			= "#654735",
	fg1			= "#4f3829",
	red			= "#c14a4a",
	orange			= "#c35e0a",
	yellow			= "#b47109",
	green			= "#6c782e",
	aqua			= "#4c7a5d",
	blue			= "#45707a",
	purple			= "#945e80",
	bg_red			= "#ae5858",
	bg_green		= "#6f8352",
	bg_yellow		= "#a96b2c",
	gray0			= "#a89984",
	gray1			= "#928374",
	gray2			= "#7c6f64",
}

local gruvbox_material_medium_light_palette = {
	bg_dim			= '#f2e5bc',
	bg0			= '#fbf1c7',
	bg1			= '#f4e8be',
	bg2			= '#f2e5bc',
	bg3			= '#eee0b7',
	bg4			= '#e5d5ad',
	bg5			= '#ddccab',
	bg_statusline1		= '#f2e5bc',
	bg_statusline2		= '#f2e5bc',
	bg_statusline3		= '#e5d5ad',
	bg_diff_green		= '#e6eabc',
	bg_visual_green		= '#dee2b6',
	bg_diff_red		= '#f9e0bb',
	bg_visual_red		= '#f1d9b5',
	bg_diff_blue		= '#e2e6c7',
	bg_visual_blue		= '#dadec0',
	bg_visual_yellow	= '#fae7b3',
	bg_current_word		= '#f2e5bc',
	fg0			= '#654735',
	fg1			= '#4f3829',
	red			= '#c14a4a',
	orange			= '#c35e0a',
	yellow			= '#b47109',
	green			= '#6c782e',
	aqua			= '#4c7a5d',
	blue			= '#45707a',
	purple			= '#945e80',
	bg_red			= '#ae5858',
	bg_green		= '#6f8352',
	bg_yellow		= '#a96b2c',
	gray0			= '#a89984',
	gray1			= '#928374',
	gray2			= '#7c6f64',
}

local gruvbox_material_soft_light_palette = {
	bg_dim			= '#ebdbb2',
	bg0			= '#f2e5bc',
	bg1			= '#eddeb5',
	bg2			= '#ebdbb2',
	bg3			= '#e6d5ae',
	bg4			= '#dac9a5',
	bg5			= '#d5c4a1',
	bg_statusline1		= '#ebdbb2',
	bg_statusline2		= '#ebdbb2',
	bg_statusline3		= '#dac9a5',
	bg_diff_green		= '#dfe1b4',
	bg_visual_green		= '#d7d9ae',
	bg_diff_red		= '#f7d9b9',
	bg_visual_red		= '#efd2b3',
	bg_diff_blue		= '#dbddbf',
	bg_visual_blue		= '#d3d5b8',
	bg_visual_yellow	= '#f3deaa',
	bg_current_word		= '#ebdbb2',
	fg0			= '#654735',
	fg1			= '#4f3829',
	red			= '#c14a4a',
	orange			= '#c35e0a',
	yellow			= '#b47109',
	green			= '#6c782e',
	aqua			= '#4c7a5d',
	blue			= '#45707a',
	purple			= '#945e80',
	bg_red			= '#ae5858',
	bg_green		= '#6f8352',
	bg_yellow		= '#a96b2c',
	gray0			= '#a89984',
	gray1			= '#928374',
	gray2			= '#7c6f64',
}

--- Gets the gruvbox material light theme.
--- @param toughness string Tougness of theme: "hard", "soft" or "medium".
--- @return table theme Used in Yatline.
local function gruvbox_material_light_theme(toughness)
	local gruvbox_material_light_palette
	if toughness == "hard" then
		gruvbox_material_light_palette = gruvbox_material_hard_light_palette
	elseif toughness == "soft" then
		gruvbox_material_light_palette = gruvbox_material_soft_light_palette
	else
		gruvbox_material_light_palette = gruvbox_material_medium_light_palette
	end

	return {
		-- yatline
		section_separator_open = "",
		section_separator_close = "",

		inverse_separator_open = "",
		inverse_separator_close = "",

		part_separator_open = "",
		part_separator_close = "",

		style_a = {
			fg = gruvbox_material_light_palette.bg0,
			bg_mode = {
				normal = gruvbox_material_light_palette.gray2,
				select = gruvbox_material_light_palette.blue,
				un_set = gruvbox_material_light_palette.orange
			}
		},
		style_b = { bg = gruvbox_material_light_palette.bg5, fg = gruvbox_material_light_palette.fg1 },
		style_c = { bg = gruvbox_material_light_palette.bg2, fg = gruvbox_material_light_palette.fg1 },

		permissions_t_fg = gruvbox_material_light_palette.green,
		permissions_r_fg = gruvbox_material_light_palette.yellow,
		permissions_w_fg = gruvbox_material_light_palette.red,
		permissions_x_fg = gruvbox_material_light_palette.aqua,
		permissions_s_fg = gruvbox_material_light_palette.gray2,

		selected = { icon = "󰻭", fg = gruvbox_material_light_palette.yellow },
		copied = { icon = "", fg = gruvbox_material_light_palette.green },
		cut = { icon = "", fg = gruvbox_material_light_palette.red },

		total = { icon = "󰮍", fg = gruvbox_material_light_palette.yellow },
		succ = { icon = "", fg = gruvbox_material_light_palette.green },
		fail = { icon = "", fg = gruvbox_material_light_palette.red },
		found = { icon = "󰮕", fg = gruvbox_material_light_palette.blue },
		processed = { icon = "󰐍", fg = gruvbox_material_light_palette.green },

		-- yatline-githead
		prefix_color = gruvbox_material_light_palette.fg1,
		branch_color = gruvbox_material_light_palette.blue,
		commit_color = gruvbox_material_light_palette.purple,
		behind_color = gruvbox_material_light_palette.orange,
		ahead_color = gruvbox_material_light_palette.aqua,
		stashes_color = gruvbox_material_light_palette.purple,
		state_color = gruvbox_material_light_palette.red,
		staged_color = gruvbox_material_light_palette.yellow,
		unstaged_color = gruvbox_material_light_palette.orange,
		untracked_color = gruvbox_material_light_palette.aqua,
	}
end

return { setup = function(_, args)
	args = args or {}

	local mode = args.mode or "dark"
	local toughness = args.toughness or "medium"

	if mode == "light" then
		return gruvbox_material_light_theme(toughness)
	else
		return gruvbox_material_dark_theme(toughness)
	end
end }
