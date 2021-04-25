local wezterm = require 'wezterm';

return {
	hide_tab_bar_if_only_one_tab = true,
	color_scheme_dirs = {"~/.config/wezterm/colors"},
	color_scheme = "Miramare",
	font = wezterm.font("SF Mono"),
	font_size = 14,
	window_padding = {
    	left = 40,
    	-- This will become the scrollbar width if you have enabled the scrollbar!
    	right = 40,

    	top = 40,
    	bottom = 40,
  }
}

