local wezterm = require("wezterm")
-- local colors = require('colors/rose-pine').colors()
-- local window_frame = require('colors/rose-pine').window_frame()
return {
	window_padding = {
		left = 30,
		right = 30,
		top = 30,
		bottom = 30,
	},
	-- color_scheme = "zenbones_dark",
	colors = {
		foreground = "#dde1e6",
		background = "#161616",
		cursor_bg = "#f2f4f8",
		cursor_fg = "#393939",
		cursor_border = "#f2f4f8",
		selection_fg = "#f2f4f8",
		selection_bg = "#525252",
		scrollbar_thumb = "#222222",
		split = "#444444",
		ansi = {
			"#262626",
			"#ff7eb6",
			"#42be65",
			"#82cfff",
			"#33b1ff",
			"#ee5396",
			"#3ddbd9",
			"#dde1e6",
		},
		brights = {
			"#393939",
			"#ff7eb6",
			"#42be65",
			"#82cfff",
			"#33b1ff",
			"#ee5396",
			"#3ddbd9",
			"#ffffff",
		},
	},
	front_end = "WebGpu",
	-- colors = colors,
	-- font = wezterm.font({ family = "CartographCF Nerd Font", weight = "Regular" }),
	font = wezterm.font_with_fallback({
		{ family = "PragmataProLiga Nerd Font", weight = "Regular", harfbuzz_features = { "calt=1" } },
	}),
	-- font = wezterm.font({ family = "PragmataPro Mono" }),
	-- font_rules = {
	--   -- Define a rule that matches when italic text is shown
	--   {
	--     -- If specified, this rule matches when a cell's italic value exactly
	--     -- matches this.  If unspecified, the attribute value is irrelevant
	--     -- with respect to matching.
	--     italic = true,

	--     -- Match based on intensity: "Bold", "Normal" and "Half" are supported
	--     -- intensity = "Normal",

	--     -- Match based on underline: "None", "Single", and "Double" are supported
	--     -- underline = "None",

	--     -- Match based on the blink attribute: "None", "Slow", "Rapid"
	--     -- blink = "None",

	--     -- Match based on reverse video
	--     -- reverse = false,

	--     -- Match based on strikethrough
	--     -- strikethrough = false,

	--     -- Match based on the invisible attribute
	--     -- invisible = false,

	--     -- When the above attributes match, apply this font styling
	--     font = wezterm.font({ family = "PragmataPro", harfbuzz_features = { "calt=1", "clig=1", "ss06=1" } }),
	--   },
	-- },
	font_size = 18,
	window_decorations = "TITLE",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	-- You can specify some parameters to influence the font selection;
	-- for example, this selects a Bold, Italic font variant.
}
